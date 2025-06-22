#include <stdio.h>
#include "driver/uart.h"
#include <string.h>
#include "esp_log.h"
#include "uart.h"

/// @brief Function to check the length of the data based on telemetry type
/// @param data: Pointer to the data buffer (first byte of the data) 
/// @return int length of the data to be read
int check_length(uint8_t* data) {
    int telemetry_type = CHECK_BIT(data[0], 0) + CHECK_BIT(data[0], 1) * 2; // Get the telemetry type from the first byte

    if (telemetry_type == 0){
        ESP_LOGI("UART","Telemetry type: housekeeping\n"); // Log telemetry type
        return 1; // Should return the length of the data to be read (220 bits ~ 28 bytes)
    } 
    if (telemetry_type == 1){
        ESP_LOGI("UART","Telemetry type: bit-flip\n"); // Log telemetry type
        return 2; // Should return the length of the data to be read (217 bits ~ 28 bytes)
    }
    if (telemetry_type == 2){
        ESP_LOGI("UART","Telemetry type: radiation\n"); // Log telemetry type
        return 3; // Should return the length of the data to be read (This ones wierd cuz don't really know size)
    }
    if (telemetry_type == 3){
        ESP_LOGI("UART","Telemetry type: acknoledgement\n"); // Log telemetry type
        return 4; // Should return the length of the data to be read (48 bits ~ 6 bytes)
    }

    ESP_LOGW("UART","No telemetry type found, returning 1500 bytes\n"); // Log warning message
    return 1500; // Return default size if no telemetry type is found

}

/// @brief Function to concatenate two data buffers
/// @param data1: Pointer to the first data buffer
/// @param data2: Pointer to the second data buffer
/// @param length: Length of the concatenated data buffer
/// @return Pointer to the concatenated data buffer (should be freed after use)
uint8_t* concatenate_data(uint8_t* data1, uint8_t* data2, int length) {
    
    uint8_t* concatenated_data = (uint8_t*)malloc(length); // Allocate memory for concatenated data
    if (!concatenated_data) {
        ESP_LOGE("UART", "Failed to allocate memory for concatenated data\n");
        return (uint8_t*)NULL; // Return NULL if memory allocation fails
    }

    memcpy(concatenated_data, data1, 1); // Copy first data buffer to concatenated data
    memcpy(concatenated_data + 1, data2, length - 1); // Copy second data buffer to concatenated data

    return concatenated_data; // Return the concatenated data
}

/// @brief Function to initialize UART communication, configures the pins, installs driver and sets parameters
/// @param UART_NUM: UART port number (e.g., UART_NUM_0, UART_NUM_1, etc.)
/// @param TX_PIN: GPIO pin number for TX (transmit)
/// @param RX_PIN: GPIO pin number for RX (receive)
void uart_init(uart_port_t UART_NUM, int TX_PIN, int RX_PIN) {

    uart_flush(UART_NUM); // Flush the UART buffer to clear any existing data

    // Configure the UART parameters
    uart_config_t uart_config = {
        .baud_rate = 115200,                // Set baud rate
        .data_bits = UART_DATA_8_BITS,      // Set data bits
        .parity = UART_PARITY_DISABLE,      // Disable parity
        .stop_bits = UART_STOP_BITS_1,      // Set stop bits
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,  // Disable flow control
        .source_clk = UART_SCLK_APB         // Set source clock
    };

    esp_err_t ret = ESP_OK; // Variable to store return value

    // Initialize the UART with the configuration
    ret = uart_param_config(UART_NUM, &uart_config);
    if (ret == ESP_OK) {
        ESP_LOGI("UART", "UART configured successfully\n");
    } else {
        ESP_LOGE("UART", "Failed to configure UART\n");
    }

    // Set UART pins (TX and RX)
    ret = uart_set_pin(UART_NUM, TX_PIN, RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
    if (ret == ESP_OK) {
        ESP_LOGI("UART", "UART pins set successfully\n");
    } else {
        ESP_LOGE("UART", "Failed to set UART pins\n");
    }
    
    // Install the UART driver
    ret = uart_driver_install(UART_NUM, 2048, 0, 0, NULL, 0);
    if (ret == ESP_OK) {
        ESP_LOGI("UART", "UART driver installed successfully\n");
    } else {
        ESP_LOGE("UART", "Failed to install UART driver\n");
    }

}


/// @brief Function to send data over UART
/// @param UART_NUM: UART port number (e.g., UART_NUM_0, UART_NUM_1, etc.)
/// @param message: Pointer to the message to be sent (string format) (should be NULL terminated) 
void uart_send(uart_port_t UART_NUM, uint8_t* message) {
    // Send the message over UART
    uart_write_bytes(UART_NUM, message, strlen((const char*)message));
    uart_write_bytes(UART_NUM, "\n", 1); // Send a newline character after the message
    ESP_LOGI("UART", "Message sent: %s\n", message); // Log the sent message
}


/// @brief Function to receive data over UART, uses checks to see what type of telemetry is being sent and allocates the correct amount of memory for the data
/// @param UART_NUM: UART port number (e.g., UART_NUM_0, UART_NUM_1, etc.)
/// @param UART_BUF_SIZE: Size of the buffer to store received data
/// @return The received data as a pointer to uint8_t if data received (should be freed after use) else returns NULL
uint8_t* uart_receive(uart_port_t UART_NUM, int UART_BUF_SIZE) {

    ESP_LOGI("UART", "Receiving data over UART\n"); // Log the start of data reception
    uint8_t header;

    int length = uart_read_bytes(UART_NUM, &header, 1, pdMS_TO_TICKS(20)); // Read one byte of data from UART
    ESP_LOGI("UART", "Received byte: %02X\n", header); // Log the received byte in hexadecimal format
    if (length != 1) { // Ensure exactly one byte is read
        if (length < 0) {
            ESP_LOGE("UART", "Error reading bytes from UART\n"); // Log error message
        } else {
            ESP_LOGW("UART", "No data received\n"); // Log warning for no data
        }
        return (uint8_t*)NULL; // Return NULL in case of error or unexpected byte count
    }
    
    int tm_length = check_length(&header); // Check the length of the data to be read based on telemetry type
    ESP_LOGI("UART", "Telemetry length: %d\n", tm_length); // Log the telemetry length
    if (tm_length <= 0 || tm_length > UART_BUF_SIZE) {
        ESP_LOGE("UART", "Invalid telemetry length: %d\n", tm_length); // Log error message for invalid telemetry length
        return (uint8_t*)NULL; // Return NULL if telemetry length is invalid
    }

    uint8_t* full_data = (uint8_t*)malloc(tm_length); // Dynamically allocate memory for the data buffer (-1 to account for the full tm length with the temp variable too)
    
    
    if (full_data == NULL) {
        ESP_LOGE("UART", "Failed to allocate memory for data buffer\n");
        return (uint8_t*)NULL; // Return NULL if memory allocation fails
    }

    full_data[0] = header;

    ESP_LOGI("UART", "Bytes of char array: %d\n", strlen((const char*)full_data)); // Log the size of the char array

    uart_read_bytes(UART_NUM, full_data + 1, tm_length-1, pdMS_TO_TICKS(20)); // Read data from UART
    
    if (full_data[tm_length] != '\0') { // Check if the last byte is not null terminated
        full_data[tm_length] = '\0'; // Null terminate the data buffer
    }
    ESP_LOGI("UART", "Received data: %s\n", full_data); // Log the received data
    ESP_LOGI("UART", "Bytes of char array: %d\n", strlen((const char*)full_data)); // Log the size of the char array

    return full_data; // Return the dynamically allocated data
}