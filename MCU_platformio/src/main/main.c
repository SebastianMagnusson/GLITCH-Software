#include <stdio.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_log.h" // Enables logging used for debugging
#include "driver/gpio.h" // Include the ESP-IDF GPIO library
#include "driver/uart.h" // Include the ESP-IDF UART library

#include <uart.h> // Include the UART header file for UART functions
#include <gpio.h> // Include the GPIO header file for GPIO functions
#include <ethernet.h> // Include the Ethernet header file for Ethernet functions
#include <priority.h> // Include the priority header file for priority functions
#include <buffer.h> // Include the buffer header file for buffer functions

#define LED_PIN 2 // Define the GPIO pin for the LED

// Set the UART number and GPIO pins for TX and RX
// Note: The UART number and GPIO pins may vary based on the ESP32 board used (Look up)
#define UART_NUM UART_NUM_0  // Use UART0 (might be different based on our board)
#define TX_PIN_0 1            // GPIO for TX (Can be changed to pins that support UART)
#define RX_PIN_0 3            // GPIO for RX (Can be changed to pins that support UART)
#define UART_BUF_SIZE (1500)      // Buffer size for UART data (can be adjusted)


/// @brief Function to handle UART communication in a FreeRTOS task
/// @param arg: Pointer to the task argument (not used in this case)
void uart_task(void* arg) {
    ESP_LOGI("UART", "UART task started\n"); // Log the start of the UART task

    while (1) {
        // Continuously receive data over UART
        uint8_t* data = uart_receive(UART_NUM, UART_BUF_SIZE); // Receive data
        
        if (data != NULL) {

            int priority = priority_assign(data); // Assign priority to the received data

            buffer_add_tm(priority, data); // Add the data to the buffer with the assigned priority
            ESP_LOGI("UART", "Data added to buffer with priority: %d\n", priority); // Log the addition of data to the buffer

            uart_send(UART_NUM, buffer_retreive_tm()); // Echo the received data back
        }

        vTaskDelay(pdMS_TO_TICKS(2000)); // Delay for 100 ms to avoid busy waiting
    }
}

void app_main(void) {

    vTaskDelay(pdMS_TO_TICKS(10000)); // Delay for 10 seconds to allow the system to stabilize

    // Initialize the GPIO and UART configurations
    gpio_init(LED_PIN); // Initialize GPIO for LED
    uart_init(UART_NUM, TX_PIN_0, RX_PIN_0); // Initialize UART

    buffer_init(); // Initialize the buffer

    xTaskCreate(&uart_task, "UART_task", 2048, NULL, 10, NULL); // Create UART task

    
    // This shit don't work on our ESP since there are no LED pins
    while (1) {
        gpio_set_level(LED_PIN, 1); // Turn LED on
        printf("LED is on\n");
        vTaskDelay(pdMS_TO_TICKS(10000)); // Delay 1 second

        gpio_set_level(LED_PIN, 0); // Turn LED off
        printf("LED is off\n");
        vTaskDelay(pdMS_TO_TICKS(1000)); // Delay 1 second
    }
}
