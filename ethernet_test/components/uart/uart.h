#include <stdio.h>
#include "driver/uart.h"
#include "esp_log.h"

#define CHECK_BIT(var,pos) (((var)>>(pos)) & 1) // Macro to check if a bit is set in a variable

/// @brief Function to initialize UART communication, configures the pins, installs driver and sets parameters
void uart_init(void);

/// @brief Function to send data over UART
/// @param message: Pointer to the message to be sent (string format) (should be NULL terminated) 
void uart_send(uint8_t* message);

/// @brief Function to receive data over UART, uses checks to see what type of telemetry is being sent and allocates the correct amount of memory for the data
/// @return The received data as a pointer to uint8_t if data received (should be freed after use) else returns NULL
uint8_t* uart_receive(void);