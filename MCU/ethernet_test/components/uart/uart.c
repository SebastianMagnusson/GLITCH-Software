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
QueueHandle_t uart0_queue;

char* bytes_to_bin_string(const uint8_t* data, int length) {
    if (data == NULL || length <= 0) {
        return NULL;
    }
    // Each byte is 8 bits, plus a space for separation, and one for null terminator
    int str_length = length * 9; 
    char* bin_str = (char*)malloc(str_length);
    if (bin_str == NULL) {
        return NULL;
    }
    bin_str[0] = '\0'; // Initialize as empty string

    for (int i = 0; i < length; i++) {
        char byte_str[9]; // 8 bits + null terminator
        for (int j = 0; j < 8; j++) {
            byte_str[7 - j] = (data[i] & (1 << j)) ? '1' : '0';
        }
        byte_str[8] = '\0';
        strcat(bin_str, byte_str);
        if (i < length - 1) {
            strcat(bin_str, " "); // Add space between bytes
        }
    }
    return bin_str;
}

void uart_send(uint8_t* message) {
    ESP_LOGI(TAG, "Sending message: %s, length :%d", message, check_length(message)); 
    uart_write_bytes(UART_NUM, message, 1); 
}

uint8_t* uart_receive(void) {
    uint8_t header;

    // Read first byte (blocking up to 100 ms)
    int sync_length = uart_read_bytes(UART_NUM, &header, 1, pdMS_TO_TICKS(100));
    if (sync_length != 1) {
        if (sync_length < 0) {
            ESP_LOGE(TAG, "Error reading UART sync byte");
        }
        return NULL;
    }

    if (header != 0x45) {
        ESP_LOGE(TAG, "Invalid UART sync byte: 0x%02X", header);
        return NULL;
    }

    // Read second byte (blocking up to 100 ms)
    int length = uart_read_bytes(UART_NUM, &header, 1, pdMS_TO_TICKS(100));
    if (length != 1) {
        if (length < 0) {
            ESP_LOGE(TAG, "Error reading UART header");
        }
        return NULL;
    }

    // Determine packet length from ID
    uint8_t id = (header >> 6) & 0x03;
    int tm_length = 0;
    if (id == CONFIG_HOUSEKEEPING_PACKET_ID) {
        tm_length = 472 / 8; // 59 bytes
    } else if (id == CONFIG_BITFLIP_PACKET_ID) {
        tm_length = 224 / 8; // 28 bytes
    } else if (id == CONFIG_RADIATION_PACKET_ID) {
        tm_length = 10008 / 8; // 1251 bytes
    } else {
        ESP_LOGE(TAG, "Unknown packet ID: %d", id);
        return NULL;
    }

    if (tm_length <= 0 || tm_length > CONFIG_UART_BUF_SIZE) {
        ESP_LOGE(TAG, "Invalid packet length: %d", tm_length);
        return NULL;
    }

    // Allocate buffer
    uint8_t* full_data = malloc(tm_length);
    if (!full_data) {
        ESP_LOGE(TAG, "Failed to allocate memory for data buffer");
        return NULL;
    }

    full_data[0] = header;

    // Drain the rest of the packet in a loop
    int total_read = 0;
    int bytes_needed = tm_length - 1;

    while (total_read < bytes_needed) {
        int chunk = uart_read_bytes(UART_NUM,
                                    full_data + 1 + total_read,
                                    bytes_needed - total_read,
                                    pdMS_TO_TICKS(50));  // allow some jitter
        if (chunk < 0) {
            ESP_LOGE(TAG, "UART error during read");
            free(full_data);
            return NULL;
        } else if (chunk == 0) {
            ESP_LOGW(TAG, "UART timeout, got only %d/%d bytes",
                     total_read, bytes_needed);
            free(full_data);
            return NULL;
        }
        total_read += chunk;
    }

    // Handle UART events (errors, overflow)
    uart_event_t event;

    size_t buffered_len = 0; 
    uart_get_buffered_data_len(UART_NUM, &buffered_len); 
    ESP_LOGI(TAG, "UART RX buffer currently holds %d bytes", buffered_len);

    if (xQueueReceive(uart0_queue, (void *)&event, (TickType_t)0)) {
        switch (event.type) {
            case UART_BUFFER_FULL:
                ESP_LOGW(TAG, "UART RX buffer full!");
                break;
            case UART_FIFO_OVF:
                ESP_LOGW(TAG, "UART FIFO overflow!");
                uart_flush_input(UART_NUM);
                xQueueReset(uart0_queue);
                break;
            case UART_FRAME_ERR:
                ESP_LOGW(TAG, "UART frame error!");
                break;
            default:
                break;
        }
    }

    return full_data;
}


void uart_task(void *pvParameters)
{
    ESP_LOGI(TAG, "Starting UART task");
    while (1) {
        // --- Send any pending TC packets ---
        uint8_t tc_data = buffer_retreive_tc();
        if (tc_data != 255) {
            uint8_t shifted = tc_data << 5;
            uart_send(&shifted); // Send the TC code
        }
        

        // --- Drain all available FPGA packets from UART ---
        size_t buffered_len = 0;
        uart_get_buffered_data_len(UART_NUM, &buffered_len);

        while (buffered_len >= 224/8) {
            uint8_t *fpga_data = uart_receive();
            if (!fpga_data) break;

            // Determine packet type and size
            uint8_t id = (fpga_data[0] >> 6) & 0x03;
            int packet_size = 0, data_bits = 0;
            if (id == CONFIG_HOUSEKEEPING_PACKET_ID) {
                packet_size = CONFIG_HOUSEKEEPING_PACKET_SIZE;
                data_bits = 466;
            } else if (id == CONFIG_BITFLIP_PACKET_ID) {
                packet_size = CONFIG_BITFLIP_PACKET_SIZE;
                data_bits = 224;
            } else if (id == CONFIG_RADIATION_PACKET_ID) {
                packet_size = CONFIG_RADIATION_PACKET_SIZE;
                data_bits = 10008;
            } else {
                ESP_LOGE(TAG, "Unknown packet ID: %d", id);
                free(fpga_data);
                break;
            }

            uint8_t *packet = pack_tm(fpga_data, packet_size, data_bits);
            free(fpga_data);

            if (!packet) {
                ESP_LOGE(TAG, "Failed to pack FPGA data");
                break;
            }

            int priority = priority_assign(packet);
            buffer_add_tm(priority, packet);

            // Initialize storage if enabled
            #ifdef CONFIG_ENABLE_SD_STORAGE
                uint8_t packet_type = (packet[0] >> 6) & 0x03;
                storage_enqueue_packet(packet, check_length(packet), packet_type);  // <- async
            #endif

            free(packet);

            // update RX buffer length after consuming a packet
            uart_get_buffered_data_len(UART_NUM, &buffered_len);
        }

        // --- Yield to other tasks ---
        vTaskDelay(pdMS_TO_TICKS(10));
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
        .baud_rate  = CONFIG_UART_BAUD_RATE,
        .data_bits  = UART_DATA_8_BITS,
        .parity     = UART_PARITY_DISABLE,
        .stop_bits  = UART_STOP_BITS_1,
        .flow_ctrl  = UART_HW_FLOWCTRL_DISABLE,
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
        ESP_LOGI(TAG, "UART pins set successfully to TX: %d, RX: %d", CONFIG_TX_PIN, CONFIG_RX_PIN);
    } else {
        ESP_LOGE(TAG, "Failed to set UART pins");
    }
    
    // Install the UART driver
    
    
    ret = uart_driver_install(UART_NUM, 2048, 0, 20, &uart0_queue, 0);
    if (ret == ESP_OK) {
        ESP_LOGI(TAG, "UART driver installed successfully");
    } else {
        ESP_LOGE(TAG, "Failed to install UART driver");
    }

    
    // Increase stack size from 2048 to 4096 to handle radiation packets
    xTaskCreate(&uart_task, "uart_task", 4096, NULL, 10, NULL);
}

void uart_deinit(void) {
    uart_driver_delete(UART_NUM);

    #ifdef CONFIG_ENABLE_SD_STORAGE
    storage_deinit();
    #endif
}


