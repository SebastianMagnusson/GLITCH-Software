/* Ethernet Basic Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
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

#include "ethernet2.h"

void app_main(void)
{
    ESP_ERROR_CHECK(nvs_flash_init()); // Initialize NVS flash storage
    ethernet_setup(); 

    xTaskCreate(tcp_server_task, "tcp_server", 4096, (void*)AF_INET, 5, NULL);

    uart_init(); // Initialize UART communication
    buffer_init(); // Initialize buffer for internal use


    // wait for 100 seconds (remove once the loop is implemented)
    vTaskDelay(pdMS_TO_TICKS(100000)); // Delay for 100 seconds to keep the task running

}