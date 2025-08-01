#include <stdio.h>
#include "driver/uart.h"
#include <string.h>
#include "esp_log.h"
#include "uart.h"
#include "buffer.h"
#include "priority.h"
#include "format.h"
#include "sdkconfig.h"
#include "packet_generation.h"

// Define UART_NUM as the properly cast uart_port_t type
#define UART_NUM (uart_port_t)CONFIG_UART_NUM

static const char *TAG = "UART";

void uart_send(uint8_t* message) {
    ESP_LOGI(TAG, "Sending message: %s, length :%d", message, check_length(message)); 
    uart_write_bytes(UART_NUM, message, check_length(message)); 
    uart_write_bytes(UART_NUM, "\n", 1);
}

uint8_t* uart_receive(void) {

    uint8_t header;

    // Grab the first byte waiting, in order to get the TM type and full length of the data to be read
    int length = uart_read_bytes(UART_NUM, &header, 1, pdMS_TO_TICKS(20)); 
    if (length != 1) { 
        if (length < 0) {
            ESP_LOGE(TAG, "Error reading bytes from UART");
        } else {
            // ESP_LOGW(TAG, "No data received"); // Log warning for no data
        }
        return (uint8_t*)NULL; 
    }
    
    int tm_length = check_length(&header); 
    if (tm_length <= 0 || tm_length > CONFIG_UART_BUF_SIZE) {
        return (uint8_t*)NULL; 
    }

    uint8_t* full_data = (uint8_t*)malloc(tm_length);

    if (full_data == NULL) {
        ESP_LOGE(TAG, "Failed to allocate memory for data buffer");
        return (uint8_t*)NULL; 
    }

    full_data[0] = header;

    uart_read_bytes(UART_NUM, full_data + 1, tm_length-1, pdMS_TO_TICKS(20)); 
    
    return full_data; 
}

void uart_task(void *pvParameters)
{
    ESP_LOGI(TAG, "Starting UART task");
    int test = 0;
    while(1) {
        uint8_t* tc_data = buffer_retreive_tc(); 
        if (tc_data != NULL) { 
            uart_send(tc_data); 
        }
        
        // uint8_t* data = uart_receive(); // Receive data from UART
        uint8_t* data = NULL; // Generate dummy data for testing, replace with uart_receive() in production
        if (test%2) {
            data = generate_HK_data(); // Generate dummy housekeeping data
        } else {
            data = generate_ACK_data(); // Generate dummy acknowledgement data
        }
        if (data == NULL) {
            continue; 
        }
        
        int priority = priority_assign(data); 
        
        uint8_t* formatted_data = format_tm(data);
        if (formatted_data == NULL) {
            ESP_LOGE(TAG, "Failed to format data");
            free(data); 
            continue; 
        }
        int i;
        for (i = 0; i < 34; i++)
        {
            if (i > 0) printf(":");
            printf("%02X", formatted_data[i]);
        }
        printf("\n");
        buffer_add_tm(priority, formatted_data);

        test++;
        vTaskDelay(pdMS_TO_TICKS(1000)); // Delay for 1 second before the next iteration (maybe should remove)
    }
}

// Function to concatenate two data strings (might not be in use, delete at own risk)
/*
uint8_t* concatenate_data(uint8_t* data1, uint8_t* data2, int length) {
    
    uint8_t* concatenated_data = (uint8_t*)malloc(length);
    if (!concatenated_data) {
        ESP_LOGE(TAG, "Failed to allocate memory for concatenated data");
        return (uint8_t*)NULL; 
    }

    memcpy(concatenated_data, data1, 1);
    memcpy(concatenated_data + 1, data2, length - 1);

    return concatenated_data; 
}
*/

void uart_init(void) {

    uart_flush(UART_NUM); // Flush the UART buffer to clear any existing data

    // Configure the UART parameters
    uart_config_t uart_config = {
        .baud_rate = CONFIG_UART_BAUD_RATE,                
        .data_bits = UART_DATA_8_BITS,      
        .parity = UART_PARITY_DISABLE,      
        .stop_bits = UART_STOP_BITS_1,      
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_APB         
    };

    esp_err_t ret = ESP_OK; // Variable to store return value

    // Initialize the UART with the configuration
    ret = uart_param_config(UART_NUM, &uart_config);
    if (ret == ESP_OK) {
        ESP_LOGI(TAG, "UART configured successfully");
    } else {
        ESP_LOGE(TAG, "Failed to configure UART");
    }

    // Set UART pins (TX and RX)
    ret = uart_set_pin(UART_NUM, CONFIG_TX_PIN, CONFIG_RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
    if (ret == ESP_OK) {
        ESP_LOGI(TAG, "UART pins set successfully");
    } else {
        ESP_LOGE(TAG, "Failed to set UART pins");
    }
    
    // Install the UART driver
    ret = uart_driver_install(UART_NUM, 2048, 0, 0, NULL, 0);
    if (ret == ESP_OK) {
        ESP_LOGI(TAG, "UART driver installed successfully");
    } else {
        ESP_LOGE(TAG, "Failed to install UART driver");
    }

    xTaskCreate(&uart_task, "uart_task", 2048, NULL, 10, NULL); // Create a task for UART data reception

}

void uart_deinit(void) {
    uart_driver_delete(UART_NUM);
}


