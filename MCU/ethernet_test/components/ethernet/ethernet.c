#include "ethernet.h"
#include "buffer.h"
#include "format.h"
#include "storage.h"
#include "sdkconfig.h"

#include "driver/spi_master.h"

#include "esp_log.h"
#include "esp_check.h"
#include "esp_mac.h"
#include "esp_task_wdt.h"
#include "driver/gpio.h"
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "esp_netif.h"
#include "esp_netif_types.h"
#include "esp_eth.h"
#include "esp_event.h"
#include <string.h>

#include <unistd.h>
#include <sys/socket.h>
#include <errno.h>
#include <netdb.h> 
#include <arpa/inet.h>
#include <fcntl.h>

#include "packet_generation.h"

#if CONFIG_USE_STATIC_IP
    #define STATIC_IP "172.16.18.161"
    #define STATIC_GATEWAY "172.16.18.1"
    #define STATIC_NETMASK "255.255.255.0"
#endif


static EventGroupHandle_t s_network_event_group;    // Event group to signal connection status
static const char *TAG = "Ethernet";
static esp_netif_t *eth_netif = NULL;
static void *eth_glue = NULL; // <-- Add this line


/** Event handler for Ethernet events */
static void eth_event_handler(void *arg, esp_event_base_t event_base,
                              int32_t event_id, void *event_data)
{
    uint8_t mac_addr[6] = {0};
    /* we can get the ethernet driver handle from event data */
    esp_eth_handle_t eth_handle = *(esp_eth_handle_t *)event_data;

    switch (event_id) {
    case ETHERNET_EVENT_CONNECTED:
        esp_eth_ioctl(eth_handle, ETH_CMD_G_MAC_ADDR, mac_addr);
        ESP_LOGI(TAG, "Ethernet Link Up");
        ESP_LOGI(TAG, "Ethernet HW Addr %02x:%02x:%02x:%02x:%02x:%02x",
                    mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3], mac_addr[4], mac_addr[5]);
        break;
    case ETHERNET_EVENT_DISCONNECTED:
        ESP_LOGI(TAG, "Ethernet Link Down");
        break;
    case ETHERNET_EVENT_START:
        ESP_LOGI(TAG, "Ethernet Started");
        break;
    case ETHERNET_EVENT_STOP:
        ESP_LOGI(TAG, "Ethernet Stopped");
        break;
    default:
        break;
    }

}


esp_eth_handle_t init_wiz550io_eth(void) {
    static bool spi_bus_initialized = false;
    if (!spi_bus_initialized) {
        spi_bus_config_t buscfg = {
            .mosi_io_num = CONFIG_ETH_PHY_SI_PIN,
            .miso_io_num = CONFIG_ETH_PHY_SO_PIN,
            .sclk_io_num = CONFIG_ETH_PHY_SCK_PIN,
            .quadwp_io_num = -1,
            .quadhd_io_num = -1,
            .max_transfer_sz = 4096,
        };
        esp_err_t err = spi_bus_initialize(SPI2_HOST, &buscfg, SPI_DMA_CH_AUTO);
        if (err != ESP_OK && err != ESP_ERR_INVALID_STATE) {
            ESP_LOGE(TAG, "Failed to initialize SPI bus: %s", esp_err_to_name(err));
            return NULL;
        }
        spi_bus_initialized = true;
    }

    // 2. Configure SPI device for W5500
    spi_device_interface_config_t devcfg = {
        .mode = 0,
        .clock_speed_hz = 16 * 1000 * 1000, // 16 MHz
        .spics_io_num = CONFIG_ETH_PHY_CS_PIN,
        .queue_size = 20,
    };

    // 3. MAC/PHY config
    eth_mac_config_t mac_config = ETH_MAC_DEFAULT_CONFIG();
    eth_phy_config_t phy_config = ETH_PHY_DEFAULT_CONFIG();
    phy_config.reset_gpio_num = -1; // Set to your reset pin, or -1 if not used

    // 4. W5500 config
    eth_w5500_config_t w5500_config = ETH_W5500_DEFAULT_CONFIG(SPI2_HOST, &devcfg);
    w5500_config.int_gpio_num = -1; // Set to your INT pin, or -1 if not used
    w5500_config.poll_period_ms = 100; // Polling period for link status

    esp_eth_mac_t *mac = esp_eth_mac_new_w5500(&w5500_config, &mac_config);
    ESP_LOGI(TAG, "esp_eth_mac_new_w5500: %p", mac);
    if (!mac) { ESP_LOGE(TAG, "Failed to create W5500 MAC"); return NULL; }

    esp_eth_phy_t *phy = esp_eth_phy_new_w5500(&phy_config);
    ESP_LOGI(TAG, "esp_eth_phy_new_w5500: %p", phy);
    if (!phy) { ESP_LOGE(TAG, "Failed to create W5500 PHY"); mac->del(mac); return NULL; }

    esp_eth_config_t eth_config = ETH_DEFAULT_CONFIG(mac, phy);
    esp_eth_handle_t eth_handle = NULL;
    esp_err_t err = esp_eth_driver_install(&eth_config, &eth_handle);
    ESP_LOGI(TAG, "esp_eth_driver_install: %d, eth_handle: %p", err, eth_handle);
    if (err != ESP_OK || !eth_handle) {
        ESP_LOGE(TAG, "Failed to install Ethernet driver: %s", esp_err_to_name(err));
        mac->del(mac); phy->del(phy); return NULL;
    }

    // Do NOT create or attach netif here! Only do it ONCE in ethernet_setup()

    return eth_handle;
}

/** Event handler for IP_EVENT_ETH_GOT_IP */
static void got_ip_event_handler(void *arg, esp_event_base_t event_base,
                                 int32_t event_id, void *event_data)
{
    ip_event_got_ip_t *event = (ip_event_got_ip_t *) event_data;
    const esp_netif_ip_info_t *ip_info = &event->ip_info;

    ESP_LOGI(TAG, "Ethernet Got IP Address");
    ESP_LOGI(TAG, "~~~~~~~~~~~");
    ESP_LOGI(TAG, "ETHIP:" IPSTR, IP2STR(&ip_info->ip));
    ESP_LOGI(TAG, "ETHMASK:" IPSTR, IP2STR(&ip_info->netmask));
    ESP_LOGI(TAG, "ETHGW:" IPSTR, IP2STR(&ip_info->gw));
    ESP_LOGI(TAG, "~~~~~~~~~~~");

    xEventGroupSetBits(s_network_event_group, CONFIG_CONNECTED_BIT); // Set the CONNECTED_BIT in the event group to indicate that the Ethernet connection is established
}

static esp_eth_handle_t eth_init(esp_eth_mac_t **mac_out, esp_eth_phy_t **phy_out){

    esp_eth_handle_t ret = NULL;

    eth_mac_config_t mac_config = ETH_MAC_DEFAULT_CONFIG();                      // apply default common MAC configuration
    eth_esp32_emac_config_t esp32_emac_config = ETH_ESP32_EMAC_DEFAULT_CONFIG(); // apply default vendor-specific MAC configuration
    esp32_emac_config.smi_gpio.mdc_num = CONFIG_ETH_MDC_GPIO;                    // alter the GPIO used for MDC signal
    esp32_emac_config.smi_gpio.mdio_num = CONFIG_ETH_MDIO_GPIO;                  // alter the GPIO used for MDIO signal
    esp_eth_mac_t *mac = esp_eth_mac_new_esp32(&esp32_emac_config, &mac_config); // create MAC instance

    eth_phy_config_t phy_config = ETH_PHY_DEFAULT_CONFIG();      // apply default PHY configuration
    phy_config.phy_addr = CONFIG_ETH_PHY_ADDR;                   // alter the PHY address according to your board design
    phy_config.reset_gpio_num = CONFIG_ETH_PHY_RST_GPIO;         // alter the GPIO used for PHY reset
    esp_eth_phy_t *phy = esp_eth_phy_new_ip101(&phy_config);     // create generic PHY instance

    esp_eth_config_t config = ETH_DEFAULT_CONFIG(mac, phy);     // apply default driver configuration
    esp_eth_handle_t eth_handle = NULL;                         // after the driver is installed, we will get the handle of the driver

    ESP_GOTO_ON_FALSE(esp_eth_driver_install(&config, &eth_handle) == ESP_OK, NULL, err, TAG, "Ethernet driver install failed"); // install the driver with the given configuration

    if (mac_out != NULL) {
        *mac_out = mac; // return the MAC instance if requested
    }
    if (phy_out != NULL) {
        *phy_out = phy; // return the PHY instance if requested
    }
    return eth_handle; // return the handle of the installed driver

err:
    if (eth_handle != NULL) {
        esp_eth_driver_uninstall(eth_handle); // uninstall the driver if it was installed
    }
    if (mac != NULL) {
        mac->del(mac); // delete the MAC instance if it was created
    }
    if (phy != NULL) {
        phy->del(phy); // delete the PHY instance if it was created
    }
    return ret; 

}

esp_err_t eth_deinit(esp_eth_handle_t *eth_handles, uint8_t eth_cnt)
{
    ESP_RETURN_ON_FALSE(eth_handles != NULL, ESP_ERR_INVALID_ARG, TAG, "array of Ethernet handles cannot be NULL");
    for (int i = 0; i < eth_cnt; i++) {
        esp_eth_mac_t *mac = NULL;
        esp_eth_phy_t *phy = NULL;
        if (eth_handles[i] != NULL) {
            esp_err_t err = esp_eth_stop(eth_handles[i]);
            if (err != ESP_OK) {
                ESP_LOGE(TAG, "esp_eth_stop failed: %s", esp_err_to_name(err));
            } else {
                ESP_LOGI(TAG, "Ethernet %p stopped", eth_handles[i]);
                vTaskDelay(pdMS_TO_TICKS(2000));
            }
            // --- Free glue before destroying netif ---
            if (eth_glue) {
                esp_eth_del_netif_glue(eth_glue);
                eth_glue = NULL;
            }
            if (eth_netif) {
                esp_netif_destroy(eth_netif);
                eth_netif = NULL;
            }
            esp_eth_driver_uninstall(eth_handles[i]);
            esp_eth_get_mac_instance(eth_handles[i], &mac);
            esp_eth_get_phy_instance(eth_handles[i], &phy);
        }
        if (mac != NULL) {
            mac->del(mac);
        }
        if (phy != NULL) {
            phy->del(phy);
        }
    }
    return ESP_OK;
}

esp_eth_handle_t ethernet_setup(void){

    esp_eth_handle_t eth_handle = init_wiz550io_eth(); // Initialize Ethernet driver
    if (!eth_handle) return NULL;

    if (!eth_netif) {
        esp_netif_config_t cfg = ESP_NETIF_DEFAULT_ETH();
        eth_netif = esp_netif_new(&cfg);
        eth_glue = esp_eth_new_netif_glue(eth_handle); // <-- Store glue pointer
        if (!eth_glue) {
            ESP_LOGE(TAG, "esp_eth_new_netif_glue returned NULL!");
            return NULL;
        }
        ESP_ERROR_CHECK(esp_netif_attach(eth_netif, eth_glue));
    }

    esp_event_handler_unregister(ETH_EVENT, ESP_EVENT_ANY_ID, &eth_event_handler);
    esp_event_handler_unregister(IP_EVENT, IP_EVENT_ETH_GOT_IP, &got_ip_event_handler);

    ESP_ERROR_CHECK(esp_event_handler_register(ETH_EVENT, ESP_EVENT_ANY_ID, &eth_event_handler, NULL));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_ETH_GOT_IP, &got_ip_event_handler, NULL));

    #if CONFIG_USE_STATIC_IP
        if (esp_netif_dhcpc_stop(eth_netif) != ESP_OK) {
            ESP_LOGE(TAG, "Failed to stop dhcp client");
            return NULL;
        }
        esp_netif_ip_info_t info_t;
        memset(&info_t, 0, sizeof(esp_netif_ip_info_t));
        info_t.ip.addr = ipaddr_addr(STATIC_IP);
        info_t.gw.addr = ipaddr_addr(STATIC_GATEWAY);
        info_t.netmask.addr = ipaddr_addr(STATIC_NETMASK);
        if(esp_netif_set_ip_info(eth_netif, &info_t) != ESP_OK){
            ESP_LOGE(TAG, "Failed to set ip info");
        }
        ESP_LOGI(TAG, "Success to set static ip: %s, netmask: %s, gw: %s", STATIC_IP, STATIC_NETMASK, STATIC_GATEWAY);
    #endif

    ESP_ERROR_CHECK(esp_eth_start(eth_handle));

    #if CONFIG_USE_STATIC_IP
        s_network_event_group = xEventGroupCreate(); // Create an event group to signal connection
        /* Waiting until the connection is established (CONNECTED_BIT). The bits are set by eth_event_handler() (see above) */
        EventBits_t bits = xEventGroupWaitBits(s_network_event_group,
                CONFIG_CONNECTED_BIT,
                pdFALSE,
                pdFALSE,
                pdMS_TO_TICKS(CONFIG_ETH_CONNECTION_TMO_MS));

        /* xEventGroupWaitBits() returns the bits before the call returned, hence we can test which event actually happened. */
        if (!(bits & CONFIG_CONNECTED_BIT)) {
            ESP_LOGE(TAG, "Ethernet link not connected in defined timeout of %d msecs", CONFIG_ETH_CONNECTION_TMO_MS);
        }
    // Should be able to remove this as we will use static IP
    #else
        // set up dhcp client
        ESP_LOGI(TAG, "Waiting for Ethernet link to be established...");
        s_network_event_group = xEventGroupCreate(); // Create an event group to signal connection
        ESP_ERROR_CHECK(esp_netif_dhcpc_start(eth_netif)); // Start DHCP client on Ethernet interface
        /* Waiting until the connection is established (CONNECTED_BIT). The bits are set by got_ip_event_handler() (see above) */
        EventBits_t bits = xEventGroupWaitBits(s_network_event_group,
                CONFIG_CONNECTED_BIT,
                pdFALSE,
                pdFALSE,
                pdMS_TO_TICKS(CONFIG_ETH_CONNECTION_TMO_MS));
        /* xEventGroupWaitBits() returns the bits before the call returned, hence we can test which event actually happened. */
        if (!(bits & CONFIG_CONNECTED_BIT)) {
            ESP_LOGE(TAG, "Ethernet link not connected in defined timeout of %d msecs", CONFIG_ETH_CONNECTION_TMO_MS); // Log error if connection is not established
        } else {
            ESP_LOGI(TAG, "Ethernet link established successfully"); // Log success if connection is established
        }
    #endif

    return eth_handle;

}


/**
 * @brief Clear listen socket buffers and reset connection queue
 * @param listen_sock Listening socket file descriptor
 * @return ESP_OK on success, ESP_FAIL on failure
 */
static esp_err_t clear_listen_socket_buffers(int listen_sock)
{
    if (listen_sock <= 0) {
        return ESP_ERR_INVALID_ARG;
    }

    // For listening sockets, we mainly need to clear any pending connections
    // Set socket to non-blocking temporarily
    int flags = fcntl(listen_sock, F_GETFL, 0);
    if (flags >= 0) {
        fcntl(listen_sock, F_SETFL, flags | O_NONBLOCK);
    }

    // Accept and immediately close any pending connections to clear the queue
    int cleared_connections = 0;
    struct sockaddr_storage temp_addr;
    socklen_t temp_addr_len = sizeof(temp_addr);
    
    while (1) {
        int temp_sock = accept(listen_sock, (struct sockaddr *)&temp_addr, &temp_addr_len);
        if (temp_sock < 0) {
            if (errno == EAGAIN || errno == EWOULDBLOCK) {
                // No more pending connections
                break;
            } else {
                ESP_LOGW(TAG, "Error while clearing listen queue: errno %d", errno);
                break;
            }
        } else {
            // Close the pending connection immediately
            close(temp_sock);
            cleared_connections++;
        }
    }

    // Reset socket to original flags
    if (flags >= 0) {
        fcntl(listen_sock, F_SETFL, flags);
    }

    ESP_LOGI(TAG, "Cleared %d pending connections from listen socket", cleared_connections);
    return ESP_OK;
}

/**
 * @brief Create and configure a TCP server socket
 * @param port Port number to bind to
 * @return Socket file descriptor on success, -1 on failure
 */
static int create_tcp_server_socket()
{
    struct sockaddr_storage dest_addr;
    struct sockaddr_in *dest_addr_ip4 = (struct sockaddr_in *)&dest_addr;
    dest_addr_ip4->sin_addr.s_addr = htonl(INADDR_ANY);
    dest_addr_ip4->sin_family = AF_INET;
    dest_addr_ip4->sin_port = htons(CONFIG_HOST_PORT);

    int listen_sock = socket(AF_INET, SOCK_STREAM, IPPROTO_IP);
    if (listen_sock < 0) {
        ESP_LOGE(TAG, "Unable to create socket: errno %d", errno);
        return -1;
    }

    // Enable socket reuse
    int opt = 1;
    if (setsockopt(listen_sock, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt)) < 0) {
        ESP_LOGW(TAG, "Failed to set SO_REUSEADDR: errno %d", errno);
    }

    ESP_LOGI(TAG, "Socket created");

    // Bind socket
    if (bind(listen_sock, (struct sockaddr *)&dest_addr, sizeof(dest_addr)) != 0) {
        ESP_LOGE(TAG, "Socket unable to bind: errno %d", errno);
        close(listen_sock);
        return -1;
    }

    ESP_LOGI(TAG, "Socket bound to port %d", CONFIG_HOST_PORT);

    // Start listening
    if (listen(listen_sock, 1) != 0) {
        ESP_LOGE(TAG, "Error occurred during listen: errno %d", errno);
        close(listen_sock);
        return -1;
    }

    // clear_listen_socket_buffers(listen_sock);
    return listen_sock;
}

/**
 * @brief Configure TCP keepalive options for a socket
 * @param sock Socket file descriptor
 * @return ESP_OK on success, ESP_FAIL on failure
 */
static esp_err_t configure_socket_keepalive(int sock)
{
    int keepAlive = CONFIG_KEEPALIVE_ENABLED;
    int keepIdle = CONFIG_KEEPALIVE_IDLE;
    int keepInterval = CONFIG_KEEPALIVE_INTERVAL;
    int keepCount = CONFIG_KEEPALIVE_COUNT;

    if (setsockopt(sock, SOL_SOCKET, SO_KEEPALIVE, &keepAlive, sizeof(int)) < 0 ||
        setsockopt(sock, IPPROTO_TCP, TCP_KEEPIDLE, &keepIdle, sizeof(int)) < 0 ||
        setsockopt(sock, IPPROTO_TCP, TCP_KEEPINTVL, &keepInterval, sizeof(int)) < 0 ||
        setsockopt(sock, IPPROTO_TCP, TCP_KEEPCNT, &keepCount, sizeof(int)) < 0) {
        ESP_LOGE(TAG, "Failed to set keepalive options: errno %d", errno);
        return ESP_FAIL;
    }

    return ESP_OK;
}

/**
 * @brief Robust transmission function with retry logic
 * @param sock Socket file descriptor
 * @param message Message buffer to send
 * @param max_retries Maximum number of retry attempts
 * @return ESP_OK on success, ESP_FAIL on failure
 */
esp_err_t eth_transmit(int sock, uint8_t *message, int max_retries)
{
    if (sock <= 0 || message == NULL) {
        ESP_LOGE(TAG, "Invalid socket or message buffer");
        return ESP_ERR_INVALID_ARG;
    }

    size_t length = check_length(message);
    if (length == 0) {
        ESP_LOGE(TAG, "Message length is zero");
        return ESP_ERR_INVALID_SIZE;
    }

    for (int retry = 0; retry <= max_retries; retry++) {
        int len_sent = send(sock, message, length, 0);

        if (len_sent > 0) {
            if (len_sent == length) {
                ESP_LOGI(TAG, "Transmission successful: sent %d bytes", len_sent);
                return ESP_OK; // Complete transmission successful
            } else {
                ESP_LOGW(TAG, "Partial transmission: sent %d of %zu bytes", len_sent, length);
                // Could implement partial send handling here if needed
                ESP_LOGI(TAG, "Transmission successful (partial): sent %d bytes", len_sent);
                return ESP_OK; // Return success for partial send
            }
        } else {
            ESP_LOGE(TAG, "Send failed (attempt %d/%d): errno %d", retry + 1, max_retries + 1, errno);
            if (retry < max_retries) {
                vTaskDelay(pdMS_TO_TICKS(10)); // Brief delay before retry
            }
        }
    }

    return ESP_FAIL;
}

/**
 * @brief Receive data with proper error handling
 * @param sock Socket file descriptor
 * @param buffer Buffer to store received data
 * @param buffer_size Size of the receive buffer
 * @param flags Receive flags (e.g., MSG_DONTWAIT for non-blocking)
 * @return Number of bytes received, 0 for connection closed, -1 for error
 */
static int eth_receive_data(int sock, uint8_t *buffer, size_t buffer_size, int flags)
{
    if (sock <= 0 || buffer == NULL || buffer_size == 0) {
        ESP_LOGE(TAG, "Invalid receive parameters");
        return -1;
    }

    int len_received = recv(sock, buffer, buffer_size - 1, flags);
    
    if (len_received < 0) {
        if (errno == EAGAIN || errno == EWOULDBLOCK) {
            // No data available (non-blocking mode)
            return 0;
        } else {
            ESP_LOGE(TAG, "Receive error: errno %d", errno);
            return -1;
        }
    } else if (len_received == 0) {
        ESP_LOGW(TAG, "Connection closed by peer");
        return 0;
    }

    buffer[len_received] = '\0'; // Null terminate for safety
    return len_received;
}

void radiation_sending_task(void *pvParameters)
{
    general_task_params_t *params = (general_task_params_t*)pvParameters;
    int sock = params->sock;
    volatile int *kill_flag = params->kill_flag;
    uint8_t **rad_data = (uint8_t**)calloc(CONFIG_RADIATION_PACKET_NUMBER*2, sizeof(uint8_t*));

    do {
        // Retrieve radiation data from buffer
        buffer_retreive_rad(rad_data, CONFIG_RADIATION_PACKET_NUMBER*2);
        if (rad_data == NULL) {
            vTaskDelay(pdMS_TO_TICKS(100)); // Yield control while waiting for data
        }
    } while (rad_data == NULL);

    // Send the data and wait for set time before next transmission
    for (int i = 0; i < (CONFIG_RADIATION_PACKET_NUMBER * 2); i++) {
        if (eth_transmit(sock, rad_data[i], 2) != ESP_OK) {
            ESP_LOGE(TAG, "Failed to send radiation data");
            vTaskDelete(NULL);
        }
        vTaskDelay(pdMS_TO_TICKS(CONFIG_RADIATION_PACKET_WAIT_TIME));
        
        if (*kill_flag) {
            free(rad_data);
            vTaskDelete(NULL);
        }

    }
    
    free(rad_data);
    vTaskDelete(NULL);
}

/**
 * @brief Drain all pending data from the transmit buffer
 * @param sock Socket file descriptor
 * @return Number of packets sent, -1 on error
 */
static int drain_transmit_buffer(int sock)
{
    int packets_sent = 0;
    uint8_t *tc_data;

    while ((tc_data = buffer_retreive_tm()) != NULL) {
        if (eth_transmit(sock, tc_data, 2) == ESP_OK) {
            packets_sent++;
        } else {
            ESP_LOGE(TAG, "Failed to send buffered data");
            return -1;
        }
    }

    return packets_sent;
}

// /**
//  * @brief Initial retransmission of buffered data and setup for ongoing communication
//  * @param sock Socket file descriptor
//  * @return ESP_OK on success, ESP_FAIL on failure
//  */
// static esp_err_t do_retransmit(const int sock)
// {
//     uint8_t rx_buffer[128];
//     int len_receive;

//     do {
//         // Send any buffered data
//         uint8_t *tc_data = buffer_retreive_tm();
//         if (tc_data != NULL) {
//             if (eth_transmit(sock, tc_data, 2) != ESP_OK) {
//                 ESP_LOGE(TAG, "Failed to retransmit buffered data");
//                 return ESP_FAIL;
//             }
//         }

//         // Check for any initial data from client
//         len_receive = eth_receive_data(sock, rx_buffer, sizeof(rx_buffer), MSG_DONTWAIT);
        
//         if (len_receive < 0) {
//             // Fatal error occurred
//             ESP_LOGE(TAG, "Fatal receive error during retransmit");
//             return ESP_FAIL;
//         } else if (len_receive > 0) {
//             // Process received data
//             rx_buffer[len_receive] = 0; // Null-terminate for logging
//             ESP_LOGI(TAG, "Received %d bytes during retransmit: %s", len_receive, rx_buffer);
//             buffer_add_tc(rx_buffer);
//         }
//         // len_receive == 0 means no data available, which is normal
        
//         if (len_receive == 0) {
//             vTaskDelay(pdMS_TO_TICKS(10)); // Brief delay to avoid busy-waiting
//         }
        
//     } while (len_receive > 0);

//     return ESP_OK;
// }

void confirmation_task(void *pvParameters)
{
    general_task_params_t *params = (general_task_params_t*)pvParameters;
    int sock = params->sock;
    volatile int *kill_flag = params->kill_flag;
    
    uint8_t response[128];

    // Use select() to wait for data with a 5-second timeout
    fd_set readfds;
    struct timeval timeout;
    
    FD_ZERO(&readfds);
    FD_SET(sock, &readfds);
    
    timeout.tv_sec = 5;      // 5 seconds
    timeout.tv_usec = 0;     // 0 microseconds
    
    int ready = select(sock + 1, &readfds, NULL, NULL, &timeout);
    
    if (ready > 0) {
        // Data is available, safe to call recv without blocking
        int len = recv(sock, response, sizeof(response) - 1, 0);
        
        if (len <= 0) {
            ESP_LOGW(TAG, "No data received or recv error, killing confirmation task");
            vTaskDelete(NULL);
        }

        uint8_t tc_received = unpack_tc(response);
        if (tc_received == 255) {
            ESP_LOGE(TAG, "Failed to unpack telecommand packet, killing confirmation task");
            vTaskDelete(NULL);
        }

        if (tc_received == CONFIG_CUT_OFF_TC_ID)  {
            uint8_t *ack_packet = format_ack(tc_received);
            if (ack_packet != NULL) {
                if (eth_transmit(sock, ack_packet, 2) != ESP_OK) {
                    ESP_LOGE(TAG, "Failed to send ACK packet");
                }
                free(ack_packet);

                buffer_add_tc(tc_received);
                vTaskDelay(pdMS_TO_TICKS(100));
                drain_transmit_buffer(sock);
                ESP_LOGI(TAG, "Cut-off telecommand processed, shutting down server");
                close(sock);
                *kill_flag = 1;
            }
        }
    } else if (ready == 0) {
        ESP_LOGW(TAG, "Timeout waiting for confirmation data");
    } else {
        ESP_LOGE(TAG, "select() error: errno %d", errno);
    }

    ESP_LOGI(TAG, "Confirmation task exiting");
    vTaskDelete(NULL);
}

/**
 * @brief Process received telecommand data
 * @param rx_buffer Raw received data
 * @param sock Socket for potential response
 * @param task_params Parameters for confirmation task
 * @param confirmation_task_handle Handle to confirmation task
 * @return ESP_OK on success, ESP_FAIL on failure
 */
static esp_err_t process_received_telecommand(uint8_t *rx_buffer, int sock, 
                                            general_task_params_t *task_params,
                                            TaskHandle_t *confirmation_task_handle)
{
    uint8_t tc_received = unpack_tc(rx_buffer);
    if (tc_received == 255) {
        ESP_LOGE(TAG, "Failed to unpack telecommand packet");
        return ESP_FAIL;
    }

    // Check if the telecommand warrants a confirmation task
    if (tc_received == CONFIG_CUT_OFF_TC_ID) {
        if (xTaskCreate(confirmation_task, "confirmation", 4096, task_params, 5, confirmation_task_handle) != pdPASS) {
            ESP_LOGE(TAG, "Failed to create confirmation task");
            return ESP_FAIL;
        }
        return ESP_OK;
    } else if (tc_received == CONFIG_CLEAR_SD_TC_ID) {
        // Clear the SD card data
        if (storage_clear_all_data() != ESP_OK) {
            ESP_LOGE(TAG, "Failed to clear SD card data");
            return ESP_FAIL;
        }
        return ESP_OK;
    }

    // FIX: Pass the entire tc_received data, not just the ID
    buffer_add_tc(tc_received);  // Pass the pointer directly
    
    uint8_t *ack_packet = format_ack(tc_received);
    if (ack_packet == NULL) {
        ESP_LOGE(TAG, "Failed to format telecommand packet for acknowledgment");
        return ESP_FAIL;
    }
    // Initialize storage if enabled
    #ifdef CONFIG_ENABLE_SD_STORAGE
        uint8_t packet_type = (ack_packet[0] >> 6) & 0x03;
        storage_enqueue_packet(ack_packet, check_length(ack_packet), packet_type);  // <- async
    #endif
    eth_transmit(sock, ack_packet, 2);

    return ESP_OK;
}

/**
 * @brief Clear socket buffers and drain any pending data
 * @param sock Socket file descriptor
 * @return ESP_OK on success, ESP_FAIL on failure
 */
static esp_err_t clear_socket_buffers(int sock)
{
    if (sock <= 0) {
        return ESP_ERR_INVALID_ARG;
    }

    // Set socket to non-blocking mode temporarily
    int flags = fcntl(sock, F_GETFL, 0);
    if (flags >= 0) {
        fcntl(sock, F_SETFL, flags | O_NONBLOCK);
    }

    // Drain receive buffer
    uint8_t drain_buffer[256];
    int bytes_drained = 0;
    int total_drained = 0;
    
    do {
        bytes_drained = recv(sock, drain_buffer, sizeof(drain_buffer), MSG_DONTWAIT);
        if (bytes_drained > 0) {
            total_drained += bytes_drained;
        }
    } while (bytes_drained > 0);

    // Reset socket to original flags
    if (flags >= 0) {
        fcntl(sock, F_SETFL, flags);
    }

    ESP_LOGI(TAG, "Drained %d bytes from socket buffers", total_drained);
    return ESP_OK;
}

void tcp_server_task(void *pvParameters)
{
    tcp_server_task_params_t *params = (tcp_server_task_params_t*)pvParameters;
    esp_eth_handle_t eth_handle = params->eth_handle;
    volatile int *server_kill_flag = params->kill_flag;
    volatile int *reset_flag = params->reset_flag;

    // Configure watchdog with longer timeout
    esp_task_wdt_config_t wdt_config = {
        .timeout_ms = 10000,           // 10 seconds timeout
        .idle_core_mask = (1 << 0),    // Watch core 0
        .trigger_panic = false         // Don't panic on timeout
    };
    ESP_ERROR_CHECK(esp_task_wdt_reconfigure(&wdt_config));
    ESP_ERROR_CHECK(esp_task_wdt_add(NULL));
    
    ESP_LOGI(TAG, "TCP server task started");

    // Create and configure server socket
    int listen_sock = create_tcp_server_socket();
    if (listen_sock < 0) {
        ESP_LOGE(TAG, "Failed to create server socket");
        *reset_flag = 1;
        vTaskDelete(NULL);
        return;
    }

    // Set socket to non-blocking mode to prevent accept() from blocking indefinitely
    int flags = fcntl(listen_sock, F_GETFL, 0);
    if (flags < 0 || fcntl(listen_sock, F_SETFL, flags | O_NONBLOCK) < 0) {
        ESP_LOGE(TAG, "Failed to set socket to non-blocking mode");
        close(listen_sock);
        *reset_flag = 1;
        vTaskDelete(NULL);
        return;
    }

    char addr_str[128];
    int connected_sock = -1;
    
    // Main server loop
    while (1) {
        // Reset watchdog at the beginning of each loop
        esp_task_wdt_reset();
        
        // Check server kill flag
        if (*server_kill_flag) {
            ESP_LOGI(TAG, "Server kill flag set, exiting");
            esp_task_wdt_delete(NULL);
            break;
        }
        
        // Process any pending telemetry even when not connected
        uint8_t *tm_data = buffer_retreive_tm();
        if (tm_data != NULL) {
            if (connected_sock >= 0) {
                if (eth_transmit(connected_sock, tm_data, 2) != ESP_OK) {
                    ESP_LOGE(TAG, "Failed to send telemetry, closing connection");
                    shutdown(connected_sock, 0);
                    close(connected_sock);
                    connected_sock = -1;
                }
            }
            free(tm_data);  // Always free the data
        }

        // If not connected, try to accept a new connection
        if (connected_sock < 0) {
            ESP_LOGI(TAG, "Socket listening");
            
            // Accept incoming connections (non-blocking)
            struct sockaddr_storage source_addr;
            socklen_t addr_len = sizeof(source_addr);
            connected_sock = accept(listen_sock, (struct sockaddr *)&source_addr, &addr_len);

            if (connected_sock < 0) {
                if (errno == EAGAIN || errno == EWOULDBLOCK) {
                    // No pending connections, yield control and try again
                    vTaskDelay(pdMS_TO_TICKS(1000));
                    continue;
                } else {
                    ESP_LOGE(TAG, "Unable to accept connection: errno %d", errno);
                    break;
                }
            }

            // Connected - log the client address
            if (source_addr.ss_family == PF_INET) {
                inet_ntoa_r(((struct sockaddr_in *)&source_addr)->sin_addr, addr_str, sizeof(addr_str) - 1);
                ESP_LOGI(TAG, "Socket accepted from IP address: %s", addr_str);
            }
            
            // Configure the socket
            configure_socket_keepalive(connected_sock);
        }
        
        // Process data if connected
        if (connected_sock >= 0) {
            // Check for incoming telecommands
            uint8_t rx_buffer[128];
            
            // Non-blocking receive with select() timeout
            fd_set read_set;
            struct timeval timeout;
            timeout.tv_sec = 0;
            timeout.tv_usec = 100000;  // 100ms timeout
            
            FD_ZERO(&read_set);
            FD_SET(connected_sock, &read_set);
            
            if (select(connected_sock + 1, &read_set, NULL, NULL, &timeout) > 0) {
                // Data available - read it
                int len = recv(connected_sock, rx_buffer, sizeof(rx_buffer) - 1, 0);
                
                if (len < 0) {
                    ESP_LOGE(TAG, "Receive error: errno %d", errno);
                    shutdown(connected_sock, 0);
                    close(connected_sock);
                    connected_sock = -1;
                } else if (len == 0) {
                    ESP_LOGW(TAG, "Connection closed by peer");
                    shutdown(connected_sock, 0);
                    close(connected_sock);
                    connected_sock = -1;
                } else {
                    // Process the received telecommand
                    ESP_LOGI(TAG, "Received %d bytes. Raw data:", len);
                    for (int i = 0; i < len && i < 16; i++) {
                        ESP_LOGI(TAG, "  byte[%d]: 0x%02X", i, rx_buffer[i]);
                    }
                    
                    // Create task params for any spawned tasks
                    general_task_params_t task_params = {
                        .sock = connected_sock,
                        .kill_flag = server_kill_flag
                    };
                    
                    TaskHandle_t confirmation_task_handle = NULL;
                    if (process_received_telecommand(rx_buffer, connected_sock, &task_params, &confirmation_task_handle) != ESP_OK) {
                        ESP_LOGW(TAG, "Failed to process telecommand");
                    }
                }
            }
            
            // Small delay to prevent busy waiting
            vTaskDelay(pdMS_TO_TICKS(50));
        }
        
        // Reset watchdog before the next iteration
        esp_task_wdt_reset();
    }

    // Clean up any open sockets before exit
    if (connected_sock >= 0) {
        shutdown(connected_sock, 0);
        close(connected_sock);
    }
    
    close(listen_sock);
    if (!*server_kill_flag) {
        *reset_flag = 1;
    }
    ESP_LOGI(TAG, "TCP server task exiting");
    vTaskDelete(NULL);
}