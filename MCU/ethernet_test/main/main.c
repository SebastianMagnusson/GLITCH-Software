#include <stdio.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_netif.h"
#include "esp_eth.h"
#include "esp_event.h"
#include "esp_log.h"
#include "ethernet.h"
#include "sdkconfig.h"
#include "nvs_flash.h"
#include <sys/socket.h>

#include "buffer.h"
#include "uart.h"
#include "priority.h"
#include "storage.h"

#include "ethernet.h"

TaskHandle_t tcp_server_handle = NULL;

void app_main(void)
{
    ESP_ERROR_CHECK(nvs_flash_init()); 
    ESP_ERROR_CHECK(esp_netif_init()); // <-- Only once here
    ESP_ERROR_CHECK(esp_event_loop_create_default()); // <-- Only once here

    esp_eth_handle_t eth_handle;
    do {
        eth_handle = ethernet_setup();
    } while (eth_handle == NULL);

    #ifdef CONFIG_ENABLE_SD_STORAGE
        storage_init();   // mounts card and starts storage_task
    #endif

    volatile int kill_flag = 0;
    volatile int reset_flag = 0;
    tcp_server_task_params_t server_params = {
        .eth_handle = eth_handle,
        .kill_flag = &kill_flag,
        .reset_flag = &reset_flag
    };

    xTaskCreate(tcp_server_task, "tcp_server", 4096, &server_params, 5, &tcp_server_handle);

    uart_init();
    buffer_init();

    while (1) {
        if (reset_flag) {
            ethernet_setup();
            reset_flag = 0;
        } else if (kill_flag) {
            buffer_deinit();

            // Wait for TCP server task to exit
            if (tcp_server_handle) {
                for (int i = 0; i < 20; ++i) {
                    if (eTaskGetState(tcp_server_handle) == eDeleted) {
                        tcp_server_handle = NULL;
                        break;
                    }
                    vTaskDelay(pdMS_TO_TICKS(100));
                }
            }

            // Now deinit Ethernet
            eth_deinit(&eth_handle, 1);

            // Now deinit storage
            #ifdef CONFIG_ENABLE_SD_STORAGE
                storage_deinit();
            #endif

            uart_deinit();
            break;
        }
        vTaskDelay(pdMS_TO_TICKS(100));
    }
}