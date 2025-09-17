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
#include "storage.h"


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
    while(1) {
        uint8_t* tc_data = buffer_retreive_tc(); 
        if (tc_data != NULL) { 
            // Unpack the TC data before sending via UART
            uint8_t* unpacked_tc = unpack_tc(tc_data);
            if (unpacked_tc != NULL) {
                uart_send(unpacked_tc);
                free(unpacked_tc);
            }
        }

        // --- Get FPGA data from UART ---
        uint8_t* fpga_data = uart_receive();
        if (fpga_data == NULL) {
            vTaskDelay(pdMS_TO_TICKS(100));
            continue;
        }

        // Determine packet type and data_bits
        uint8_t id = (fpga_data[0] >> 6) & 0x03;
        int packet_size = 0, data_bits = 0;
        if (id == CONFIG_HOUSEKEEPING_PACKET_ID) {
            packet_size = CONFIG_HOUSEKEEPING_PACKET_SIZE;
            data_bits = 466; // 2+24+48+32+24 (exclude FPGA padding)
        } else if (id == CONFIG_BITFLIP_PACKET_ID) {
            packet_size = CONFIG_BITFLIP_PACKET_SIZE;
            data_bits = 224; // 2+24+198
        } else if (id == CONFIG_RADIATION_PACKET_ID) {
            packet_size = CONFIG_RADIATION_PACKET_SIZE;
            data_bits = 10008; // 2+24+9982
        } else {
            ESP_LOGE(TAG, "Unknown packet ID: %d", id);
            free(fpga_data);
            vTaskDelay(pdMS_TO_TICKS(100));
            continue;
        }

        uint8_t* packet = pack_tm(fpga_data, packet_size, data_bits);
        free(fpga_data);

        if (!packet) {
            ESP_LOGE(TAG, "Failed to pack FPGA data");
            vTaskDelay(pdMS_TO_TICKS(100));
            continue;
        }

        ESP_LOGI(TAG, "Generated packet - First byte: 0x%02X, Bits 0-1: %d", 
                 packet[0], packet[0] & 0b00000011);

        int priority = priority_assign(packet);
        buffer_add_tm(priority, packet);

        #ifdef CONFIG_ENABLE_SD_STORAGE
        uint8_t packet_type = (packet[0] >> 6) & 0x03;
        storage_save_packet(packet, check_length(packet), packet_type);
        ESP_LOGI(TAG, "Saving packet type %d, length=%d", packet_type, check_length(packet));
        #endif

        free(packet);
        vTaskDelay(pdMS_TO_TICKS(1000));
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

    // Initialize storage if enabled
    #ifdef CONFIG_ENABLE_SD_STORAGE
    if (storage_init() != ESP_OK) {
        ESP_LOGW(TAG, "Failed to initialize SD card storage, continuing without it");
    } else {
        ESP_LOGI(TAG, "SD card storage initialized successfully");
    }
    #endif
    
    // Increase stack size from 2048 to 4096 to handle radiation packets
    xTaskCreate(&uart_task, "uart_task", 4096, NULL, 10, NULL);
}

void uart_deinit(void) {
    uart_driver_delete(UART_NUM);

    #ifdef CONFIG_ENABLE_SD_STORAGE
    storage_deinit();
    #endif
}


