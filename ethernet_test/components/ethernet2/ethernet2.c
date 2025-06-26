#include "ethernet2.h"
#include "esp_log.h"
#include "esp_check.h"
#include "esp_mac.h"
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

#define HOST_IP_ADDR "192.168.0.165"    // Replace with your host IP address default is 192.168.0.165
#define HOST_PORT 3333                  // Replace with your host port number default is 3333 range 0 to 65535

#define CONFIG_ETH_MDC_GPIO 23
#define CONFIG_ETH_MDIO_GPIO 18
#define CONFIG_ETH_PHY_RST_GPIO 5
#define CONFIG_ETH_PHY_ADDR 1

#define CONNECTED_BIT            BIT0   // Bit to indicate connection status
#define ETH_CONNECTION_TMO_MS   (10000) // Timeout for Ethernet connection in milliseconds

#define USE_STATIC_IP 1 // Set to 1 if you want to use static IP, otherwise set to 0 for DHCP

#if USE_STATIC_IP
    #define STATIC_IP "192.168.1.5"
    #define STATIC_GATEWAY "192.168.1.1"
    #define STATIC_NETMASK "255.255.255.0"
#endif

static EventGroupHandle_t s_network_event_group;    // Event group to signal connection status
static const char *payload = "Message from ESP32 "; // Placeholder for message to send
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

    xEventGroupSetBits(s_network_event_group, CONNECTED_BIT); // Set the CONNECTED_BIT in the event group to indicate that the Ethernet connection is established
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


void ethernet_setup(void){

    esp_eth_handle_t eth_handle = eth_init(NULL, NULL); // Initialize Ethernet driver

    ESP_ERROR_CHECK(esp_netif_init()); // Initialize TCP/IP network interface (should be called only once in application)
    ESP_ERROR_CHECK(esp_event_loop_create_default()); // Create default event loop

    esp_netif_config_t cfg = ESP_NETIF_DEFAULT_ETH(); // apply default network interface configuration for Ethernet
    esp_netif_t *eth_netif = esp_netif_new(&cfg); // create network interface for Ethernet driver

    // Might have to change this into the event handler for the ethernet driver so that it sets it again if it is disconnected**

    #if USE_STATIC_IP
        if (esp_netif_dhcpc_stop(eth_netif) != ESP_OK) {
            ESP_LOGE(TAG, "Failed to stop dhcp client");
            return;
        }
        esp_netif_ip_info_t info_t;
        memset(&info_t, 0, sizeof(esp_netif_ip_info_t));
        info_t.ip.addr = ipaddr_addr(STATIC_IP);
        info_t.gw.addr = ipaddr_addr(STATIC_GATEWAY);
        info_t.netmask.addr = ipaddr_addr(STATIC_NETMASK);
        /*
        esp_ip4addr_aton((const char *)STATIC_IP, &info_t.ip.addr);
        esp_ip4addr_aton((const char *)STATIC_GATEWAY, &info_t.gw.addr);
        esp_ip4addr_aton((const char *)STATIC_NETMASK, &info_t.netmask.addr);
        */
        if(esp_netif_set_ip_info(eth_netif, &info_t) != ESP_OK){
            ESP_LOGE(TAG, "Failed to set ip info");
        }

        ESP_LOGD(TAG, "Success to set static ip: %s, netmask: %s, gw: %s", STATIC_IP, STATIC_NETMASK, STATIC_GATEWAY);

    #endif /* USE_STATIC_IP */

    ESP_ERROR_CHECK(esp_netif_attach(eth_netif, esp_eth_new_netif_glue(eth_handle))); // attach Ethernet driver to TCP/IP stack
    ESP_ERROR_CHECK(esp_event_handler_register(ETH_EVENT, ESP_EVENT_ANY_ID, &eth_event_handler, NULL)); // register user defined Ethernet event handlers
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_ETH_GOT_IP, &got_ip_event_handler, NULL)); // register user defined IP event handlers

    ESP_ERROR_CHECK(esp_netif_dhcpc_start(eth_netif)); // start DHCP client on Ethernet interface
    ESP_ERROR_CHECK(esp_eth_start(eth_handle)); // start Ethernet driver state machine

    #if USE_STATIC_IP
        /* Waiting until the connection is established (CONNECTED_BIT). The bits are set by eth_event_handler() (see above) */
        EventBits_t bits = xEventGroupWaitBits(s_network_event_group,
                CONNECTED_BIT,
                pdFALSE,
                pdFALSE,
                pdMS_TO_TICKS(ETH_CONNECTION_TMO_MS));

        /* xEventGroupWaitBits() returns the bits before the call returned, hence we can test which event actually happened. */
        if (!(bits & CONNECTED_BIT)) {
            ESP_LOGE(TAG, "Ethernet link not connected in defined timeout of %d msecs", ETH_CONNECTION_TMO_MS);
        }
    #else
        // set up dhcp client
        ESP_LOGI(TAG, "Waiting for Ethernet link to be established...");
        s_network_event_group = xEventGroupCreate(); // Create an event group to signal connection
        ESP_ERROR_CHECK(esp_netif_dhcpc_start(eth_netif)); // Start DHCP client on Ethernet interface
        /* Waiting until the connection is established (CONNECTED_BIT). The bits are set by got_ip_event_handler() (see above) */
        EventBits_t bits = xEventGroupWaitBits(s_network_event_group,
                CONNECTED_BIT,
                pdFALSE,
                pdFALSE,
                pdMS_TO_TICKS(ETH_CONNECTION_TMO_MS));
        /* xEventGroupWaitBits() returns the bits before the call returned, hence we can test which event actually happened. */
        if (!(bits & CONNECTED_BIT)) {
            ESP_LOGE(TAG, "Ethernet link not connected in defined timeout of %d msecs", ETH_CONNECTION_TMO_MS); // Log error if connection is not established
        } else {
            ESP_LOGI(TAG, "Ethernet link established successfully"); // Log success if connection is established
        }
    #endif

}


esp_err_t eth_transmit(esp_eth_handle_t eth_handle, uint8_t *message, uint32_t length)
{
    esp_err_t ret = ESP_OK;

    if (eth_handle == NULL || message == NULL || length == 0) {
        return ESP_ERR_INVALID_ARG; // Check for invalid arguments
    }

    ret = esp_eth_transmit(eth_handle, message, length); // Transmit the message using Ethernet driver

    /* Might need to use an alternative transmission method in order to be able to decide padding and other parameters
    ret = esp_eth_transmit_vargs(eth_handle, ); // Alternative transmission method
    */
    
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to transmit data over Ethernet: %s", esp_err_to_name(ret)); // Log error if transmission fails
        return ret; // Return the error code
    }

    return ret; // Return success if transmission is successful
}

void tcp_client(void)
{
    char rx_buffer[128];
    char host_ip[] = HOST_IP_ADDR;
    int addr_family = 0;
    int ip_protocol = 0;

    while (1) {
        struct sockaddr_in dest_addr;
        inet_pton(AF_INET, host_ip, &dest_addr.sin_addr);
        dest_addr.sin_family = AF_INET;
        dest_addr.sin_port = htons(HOST_PORT);
        addr_family = AF_INET;
        ip_protocol = IPPROTO_IP;

        int sock =  socket(addr_family, SOCK_STREAM, ip_protocol);
        if (sock < 0) {
            ESP_LOGE(TAG, "Unable to create socket: errno %d", errno);
            break;
        }
        ESP_LOGI(TAG, "Socket created, connecting to %s:%d", host_ip, HOST_PORT);

        int err = connect(sock, (struct sockaddr *)&dest_addr, sizeof(dest_addr));
        if (err != 0) {
            ESP_LOGE(TAG, "Socket unable to connect: errno %d", errno);
            break;
        }
        ESP_LOGI(TAG, "Successfully connected");

        while (1) {
            int err = send(sock, payload, strlen(payload), 0);
            if (err < 0) {
                ESP_LOGE(TAG, "Error occurred during sending: errno %d", errno);
                break;
            }

            int len = recv(sock, rx_buffer, sizeof(rx_buffer) - 1, 0);
            // Error occurred during receiving
            if (len < 0) {
                ESP_LOGE(TAG, "recv failed: errno %d", errno);
                break;
            }
            // Data received
            else {
                rx_buffer[len] = 0; // Null-terminate whatever we received and treat like a string
                ESP_LOGI(TAG, "Received %d bytes from %s:", len, host_ip);
                ESP_LOGI(TAG, "%s", rx_buffer);
            }
        }

        if (sock != -1) {
            ESP_LOGE(TAG, "Shutting down socket and restarting...");
            shutdown(sock, 0);
            close(sock);
        }
    }
}
