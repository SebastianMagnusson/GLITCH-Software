#include "ethernet2.h"
#include "esp_log.h"
#include "esp_check.h"
#include "esp_mac.h"
#include "driver/gpio.h"
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "esp_netif.h"
#include "esp_eth.h"

#define CONFIG_ETH_MDC_GPIO 23
#define CONFIG_ETH_MDIO_GPIO 18
#define CONFIG_ETH_PHY_RST_GPIO 5
#define CONFIG_ETH_PHY_ADDR 1

#define STATIC_IP 0 // Set to 1 if you want to use static IP, otherwise set to 0 for DHCP

#if STATIC_IP
    #define S_IP ""
    #define GATEWAY ""
    #define NETMASK ""
#endif

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

    #if STATIC_IP
        if (esp_netif_dhcpc_stop(eth_netif) != ESP_OK) {
            ESP_LOGE(TAG, "Failed to stop dhcp client");
            return;
        }
        esp_netif_ip_info_t info_t;
        memset(&info_t, 0, sizeof(esp_netif_ip_info_t));
        ipaddr_aton((const char *)S_IP, &info_t.ip.addr);
        ipaddr_aton((const char *)GATEWAY, &info_t.gw.addr);
        ipaddr_aton((const char *)NETMASK, &info_t.netmask.addr);
        if(esp_netif_set_ip_info(eth_netif, &info_t) != ESP_OK){
            ESP_LOGE(TAG, "Failed to set ip info");
        }
    #endif /* STATIC_IP */

    ESP_ERROR_CHECK(esp_netif_attach(eth_netif, esp_eth_new_netif_glue(eth_handle))); // attach Ethernet driver to TCP/IP stack
    ESP_ERROR_CHECK(esp_event_handler_register(ETH_EVENT, ESP_EVENT_ANY_ID, &eth_event_handler, NULL)); // register user defined Ethernet event handlers
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_ETH_GOT_IP, &got_ip_event_handler, NULL)); // register user defined IP event handlers
    ESP_ERROR_CHECK(esp_eth_start(eth_handle)); // start Ethernet driver state machine

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

esp_err_t eth_receive(esp_eth_handle_t eth_handle){


}