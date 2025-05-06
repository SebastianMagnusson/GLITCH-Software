#include <stdio.h>
#include "esp_log.h"


/// @brief Convert the data to Ethernet frame format
/// @param uint8_t* data: Pointer to the data being converted/put into the Ethernet frame
/// @return The finished Ethernet frame
/// @note This function is a placeholder and should be replaced with actual conversion logic
uint8_t* to_ethernet(uint8_t* data) {
    // This is a placeholder for the actual conversion logic
    ESP_LOGI("Ethernet", "Data converted to Ethernet frame\n");
    return data; // Return the converted data (for now, just return the original data)
}

/// @brief Convert the Ethernet frame back to data format
/// @param uint8_t* frame 
/// @return The data extracted from the Ethernet frame
/// @note This function is a placeholder and should be replaced with actual conversion logic
uint8_t* from_ethernet(uint8_t* frame) {
    // Convert the Ethernet frame back to data format
    // This is a placeholder for the actual conversion logic
    ESP_LOGI("Ethernet", "Data converted from Ethernet frame\n");
    return frame; // Return the converted data (for now, just return the original data)
}