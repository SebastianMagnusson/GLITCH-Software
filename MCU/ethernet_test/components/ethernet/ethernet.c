#include "ethernet.h"
#include "buffer.h"
#include "format.h"
#include "sdkconfig.h"

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

#if CONFIG_USE_STATIC_IP
    #define STATIC_IP "192.168.4.2"
    #define STATIC_GATEWAY "192.168.4.1"
    #define STATIC_NETMASK "255.255.255.0"
#endif


static EventGroupHandle_t s_network_event_group;    // Event group to signal connection status
static const char *TAG = "Ethernet";

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
            esp_eth_get_mac_instance(eth_handles[i], &mac);
            esp_eth_get_phy_instance(eth_handles[i], &phy);
            ESP_RETURN_ON_ERROR(esp_eth_driver_uninstall(eth_handles[i]), TAG, "Ethernet %p uninstall failed", eth_handles[i]);
        }
        if (mac != NULL) {
            mac->del(mac);
        }
        if (phy != NULL) {
            phy->del(phy);
        }
    }
    free(eth_handles);
    return ESP_OK;
}

esp_eth_handle_t ethernet_setup(void){

    esp_eth_handle_t eth_handle = eth_init(NULL, NULL); // Initialize Ethernet driver

    ESP_ERROR_CHECK(esp_netif_init()); // Initialize TCP/IP network interface (should be called only once in application)
    ESP_ERROR_CHECK(esp_event_loop_create_default()); // Create default event loop

    esp_netif_config_t cfg = ESP_NETIF_DEFAULT_ETH(); // apply default network interface configuration for Ethernet
    esp_netif_t *eth_netif = esp_netif_new(&cfg); // create network interface for Ethernet driver


    ESP_ERROR_CHECK(esp_netif_attach(eth_netif, esp_eth_new_netif_glue(eth_handle))); // attach Ethernet driver to TCP/IP stack
    ESP_ERROR_CHECK(esp_event_handler_register(ETH_EVENT, ESP_EVENT_ANY_ID, &eth_event_handler, NULL)); // register user defined Ethernet event handlers
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_ETH_GOT_IP, &got_ip_event_handler, NULL)); // register user defined IP event handlers

    // Might have to change this into the event handler for the ethernet driver so that it sets it again if it is disconnected**
    // As in the MCU loses power and has to restart, but then the program should start from the beginning so might not be needed.    
    #if CONFIG_USE_STATIC_IP
        // Might not be needed to stop the dhcp client if we change this into the event handler.
        // Then it would only need to be called once at the start
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

    #endif /* USE_STATIC_IP */

    ESP_ERROR_CHECK(esp_eth_start(eth_handle)); // start Ethernet driver state machine

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
        
        /* Might need to use an alternative transmission method in order to be able to decide padding and other parameters
       But probably not since we should add the padding manually in the format_tm function, depending on the 
        ret = esp_eth_transmit_vargs(eth_handle, message, length); 
        */
        // Alternative transmission method
        // Keep this in mind for datarate testing
        // send() can return less bytes than supplied length.
        // Walk-around for robust implementation.
        // Have to check bitrate on this as it might add a big padding overhead
        /*
        int to_write = len;
        while (to_write > 0) {
            int written = send(sock, rx_buffer + (len - to_write), to_write, 0);
            if (written < 0) {
                ESP_LOGE(TAG, "Error occurred during sending: errno %d", errno);
                // Failed to retransmit, giving up
                return;
            }
            to_write -= written;
        } 
        */

        int len_sent = send(sock, message, length, 0);
        
        if (len_sent > 0) {
            if (len_sent == length) {
                return ESP_OK; // Complete transmission successful
            } else {
                ESP_LOGW(TAG, "Partial transmission: sent %d of %zu bytes", len_sent, length);
                // Could implement partial send handling here if needed
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

/**
 * @brief Initial retransmission of buffered data and setup for ongoing communication
 * @param sock Socket file descriptor
 * @return ESP_OK on success, ESP_FAIL on failure
 */
static esp_err_t do_retransmit(const int sock)
{
    uint8_t rx_buffer[128];
    int len_receive;

    do {
        // Send any buffered data
        uint8_t *tc_data = buffer_retreive_tm();
        if (tc_data != NULL) {
            if (eth_transmit(sock, tc_data, 2) != ESP_OK) {
                ESP_LOGE(TAG, "Failed to retransmit buffered data");
                return ESP_FAIL;
            }
        }

        // Check for any initial data from client
        len_receive = eth_receive_data(sock, rx_buffer, sizeof(rx_buffer), MSG_DONTWAIT);
        
        if (len_receive < 0) {
            // Fatal error occurred
            ESP_LOGE(TAG, "Fatal receive error during retransmit");
            return ESP_FAIL;
        } else if (len_receive > 0) {
            // Process received data
            rx_buffer[len_receive] = 0; // Null-terminate for logging
            ESP_LOGI(TAG, "Received %d bytes during retransmit: %s", len_receive, rx_buffer);
            buffer_add_tc(rx_buffer);
        }
        // len_receive == 0 means no data available, which is normal
        
        if (len_receive == 0) {
            vTaskDelay(pdMS_TO_TICKS(10)); // Brief delay to avoid busy-waiting
        }
        
    } while (len_receive > 0);

    return ESP_OK;
}

void confirmation_task(void *pvParameters)
{
    general_task_params_t *params = (general_task_params_t*)pvParameters;
    int sock = params->sock;
    volatile int *kill_flag = params->kill_flag;
    
    int len;
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
        len = eth_receive_data(sock, response, sizeof(response), MSG_DONTWAIT);
        
        if (len <= 0) {
            // No data or error, kill task
            ESP_LOGW(TAG, "No data received or recv error, killing confirmation task");
            vTaskDelete(NULL);
        }

        uint8_t *tc_received = unpack_tc(response);
        if (tc_received == NULL) {
            ESP_LOGE(TAG, "Failed to unpack telecommand packet, killing confirmation task");
            vTaskDelete(NULL);
        }

        if (((tc_received[3] >> 1) & 0b00000011) == CONFIG_CUT_OFF_TC_ID)  {
            uint8_t *ack_packet = format_tc(tc_received);
            if (ack_packet != NULL) {

                eth_transmit(sock, ack_packet, 2);

                buffer_add_tc(tc_received);

                // Set the kill flag
                *kill_flag = 1;
            }
        }
    }

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
    uint8_t *tc_received = unpack_tc(rx_buffer);
    if (tc_received == NULL) {
        ESP_LOGE(TAG, "Failed to unpack telecommand packet");
        return ESP_FAIL;
    }

    // Check if the telecommand warrants a confirmation task
    if (((tc_received[3] >> 1) & 0b00000111) == CONFIG_CUT_OFF_TC_ID) {
        if (xTaskCreate(confirmation_task, "confirmation", 2048, task_params, 5, confirmation_task_handle) != pdPASS) {
            ESP_LOGE(TAG, "Failed to create confirmation task");
            return ESP_FAIL;
        }
    }

    uint8_t tc_id = (tc_received[3] >> 1) & 0b00000111;
    buffer_add_tc(&tc_id);
    uint8_t *ack_packet = format_tc(tc_received);
    if (ack_packet == NULL) {
        ESP_LOGE(TAG, "Failed to format telecommand packet for acknowledgment");
        return ESP_FAIL;
    }
    eth_transmit(sock, ack_packet, 2);

    return ESP_OK;
}

/**
 * @brief Handle client connection and data exchange
 * @param sock Client socket
 * @param eth_handle Ethernet handle
 * @param server_kill_flag Pointer to server kill flag
 * @return ESP_OK on normal completion, ESP_FAIL on error
 */
void handle_client_connection(int sock, esp_eth_handle_t eth_handle, volatile int *server_kill_flag)
{
    // Configure socket keepalive
    if (configure_socket_keepalive(sock) != ESP_OK) {
        ESP_LOGW(TAG, "Failed to configure keepalive options");
    }

    // Initial retransmission of any buffered data
    // Can remove
    if (do_retransmit(sock) != ESP_OK) {
        ESP_LOGE(TAG, "Initial retransmission failed");
        return;
    }

    // Create a task-specific kill flag for confirmation task
    volatile int confirmation_kill_flag = 0;
    
    // Set up task parameters for confirmation task
    general_task_params_t task_params = {
        .sock = sock,
        .kill_flag = &confirmation_kill_flag
    };
    
    TaskHandle_t confirmation_task_handle = NULL;
    uint8_t rx_buffer[CONFIG_ETH_BUFFER_SIZE];
    int len_receive;

    // Main communication loop
    do {
        // Send any pending data from transmit buffer
        uint8_t *tm_packet = buffer_retreive_tm(); 
        if (tm_packet != NULL) {
            if (tm_packet[3] == 0b00000011) {
                xTaskCreate(radiation_sending_task, "radiation_sending", 2048, &task_params, 5, NULL);
            }

            if (eth_transmit(sock, tm_packet, 2) != ESP_OK) {
                ESP_LOGE(TAG, "Transmission failed, closing connection");
                break;
            }
        }

        // Receive data from client (non-blocking)
        len_receive = eth_receive_data(sock, rx_buffer, sizeof(rx_buffer), MSG_DONTWAIT);
        ESP_LOGD(TAG, "Received %d bytes from client", len_receive);


        // Check if confirmation task has completed
        if (confirmation_kill_flag && confirmation_task_handle != NULL) {
            ESP_LOGI(TAG, "Confirmation task completed, shutting down server");
            
            // Set server kill flag
            *server_kill_flag = 1;
            confirmation_task_handle = NULL;

            // Drain any remaining data in transmit buffer
            if (drain_transmit_buffer(sock) < 0) {
                ESP_LOGE(TAG, "Failed to drain transmit buffer");
            }

            // Cleanup and exit
            shutdown(sock, 0);
            close(sock);
            eth_deinit(eth_handle, 1);
            vTaskDelete(NULL);
        }

        // Process received data
        if (len_receive > 0) {
            // Add debugging: log the received data
            ESP_LOGI(TAG, "Received %d bytes. Raw data:", len_receive);
            for (int i = 0; i < len_receive && i < 16; i++) {
                ESP_LOGI(TAG, "  byte[%d]: 0x%02X", i, rx_buffer[i]);
            }
            
            if (process_received_telecommand(rx_buffer, sock, &task_params, &confirmation_task_handle) != ESP_OK) {
                ESP_LOGW(TAG, "Failed to process telecommand, continuing...");
            }

        } else if (len_receive < 0) {
            // Fatal error occurred
            ESP_LOGE(TAG, "Fatal receive error, closing connection");
            break;
        }
        // len_receive == 0 means no data available (EAGAIN/EWOULDBLOCK), continue loop

        // Feed the watchdog to prevent timeout
        esp_task_wdt_reset();
        
        // Small delay to prevent busy waiting - increased to give more time
        vTaskDelay(pdMS_TO_TICKS(10));

    } while (len_receive >= 0);

    return;
}

void tcp_server_task(void *pvParameters)
{
    tcp_server_task_params_t *params = (tcp_server_task_params_t*)pvParameters;
    esp_eth_handle_t eth_handle = params->eth_handle;
    volatile int *server_kill_flag = params->kill_flag;
    volatile int *reset_flag = params->reset_flag;

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
    
    // Main server loop
    while (1) {
        // Check server kill flag
        if (*server_kill_flag) {
            ESP_LOGI(TAG, "Server kill flag set, exiting");
            break;
        }

        ESP_LOGI(TAG, "Socket listening");

        // Accept incoming connections (non-blocking)
        struct sockaddr_storage source_addr;
        socklen_t addr_len = sizeof(source_addr);
        int connected_sock = accept(listen_sock, (struct sockaddr *)&source_addr, &addr_len);

        if (connected_sock < 0) {
            if (errno == EAGAIN || errno == EWOULDBLOCK) {
                // No pending connections, yield control and try again
                vTaskDelay(pdMS_TO_TICKS(100));
                continue;
            } else {
                ESP_LOGE(TAG, "Unable to accept connection: errno %d", errno);
                break;
            }
        }

        // Convert client IP address to string for logging
        if (source_addr.ss_family == PF_INET) {
            inet_ntoa_r(((struct sockaddr_in *)&source_addr)->sin_addr, addr_str, sizeof(addr_str) - 1);
            ESP_LOGI(TAG, "Socket accepted from IP address: %s", addr_str);
        }

        // Handle the client connection
        handle_client_connection(connected_sock, eth_handle, server_kill_flag);

        // Close client socket after handling
        shutdown(connected_sock, 0);
        close(connected_sock);
        ESP_LOGI(TAG, "Client connection closed");
        
        // Feed the watchdog and add small delay
        esp_task_wdt_reset();
        vTaskDelay(pdMS_TO_TICKS(100));
    }

    // Cleanup
    close(listen_sock);
    *reset_flag = 1;
    ESP_LOGI(TAG, "TCP server task exiting");
    vTaskDelete(NULL);
}
