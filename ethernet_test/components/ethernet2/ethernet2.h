#pragma once

#include "esp_eth_driver.h"


/// @brief setup function for Ethernet driver and network interface
/// @note This function initializes the Ethernet driver, creates a network interface, and registers event handlers.
/// @param void
void ethernet_setup(void); // Function to setup Ethernet driver and network interface