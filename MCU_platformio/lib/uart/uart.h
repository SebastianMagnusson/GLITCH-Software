#include <stdio.h>
#include "driver/uart.h"
#include "esp_log.h"

#define CHECK_BIT(var,pos) (((var)>>(pos)) & 1) // Macro to check if a bit is set in a variable

void uart_init(uart_port_t UART_NUM, int TX_PIN, int RX_PIN);
void uart_send(uart_port_t UART_NUM, uint8_t* message);
uint8_t* uart_receive(uart_port_t UART_NUM, int UART_BUF_SIZE);
