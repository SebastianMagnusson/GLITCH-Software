#ifndef STORAGE_H
#define STORAGE_H

#include <stdint.h>
#include <stdbool.h>
#include "esp_err.h"

/**
 * Initialize the SD card storage
 * 
 * @return ESP_OK if successful, otherwise an error code
 */
esp_err_t storage_init(void);

/**
 * Store a telemetry packet to SD card
 * 
 * @param data Pointer to the packet data
 * @param length Length of the packet
 * @param packet_id ID of the packet (0=HK, 1=BF, 2=RAD)
 * @return ESP_OK if successful, otherwise an error code
 */
esp_err_t storage_save_packet(const uint8_t* data, size_t length, uint8_t packet_id);

/**
 * Clean up storage resources
 */
void storage_deinit(void);

/**
 * Get storage status information
 * 
 * @param free_space Pointer to store free space (in KB)
 * @param total_space Pointer to store total space (in KB)
 * @param packet_count Pointer to store the total number of saved packets
 * @return ESP_OK if successful, otherwise an error code
 */
esp_err_t storage_get_stats(uint32_t* free_space, uint32_t* total_space, uint32_t* packet_count);

#endif // STORAGE_H