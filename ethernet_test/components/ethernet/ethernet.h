#pragma once

#include "esp_eth_driver.h"


/// @brief setup function for Ethernet driver and network interface
/// @note This function initializes the Ethernet driver, creates a network interface, and registers event handlers.
/// @return esp_eth_handle_t The handle of the Ethernet driver.
esp_eth_handle_t ethernet_setup(void); // Function to setup Ethernet driver and network interface


/// @brief sets up the tcp client to connect to the laptop server
/// @note This function creates a TCP client that connects to a server specified by the HOST_IP
/// @note This function is designed to run in a loop, attempting to connect to the server and send/receive data.
/// @param  void
// void tcp_client(void); // Function to create a TCP client that connects to a server


/// @brief set up the tcp server to listen for incoming connections
/// @note This function creates a TCP server that listens for incoming connections on a specified port.
/// @param pvParameters ip address family (AF_INET for IPv4, AF_INET6 for IPv6)
void tcp_server_task(void *pvParameters);