#include <stdio.h>
#include "esp_log.h"

#include "priority.h"

#define CHECK_BIT(var,pos) (((var)>>(pos)) & 1) // Macro to check if a bit is set in a variable

static const char *TAG = "Priority"; // Tag for logging

/// @brief Function to assign priority of the data comming from the FPGA
/// @param data: Pointer to the data buffer (first byte of the data)
/// @return int Priority of the data (0-3)
int priority_assign(uint8_t* data) {

    if (data == NULL) { // Check if data is NULL
        
        ESP_LOGE(TAG,"Data is NULL, returning priority 0\n"); // Log error message
        
        return 0; // Return default priority if data is NULL
    }

    int telemetry_type = CHECK_BIT(data[0], 0) + CHECK_BIT(data[0], 1) * 2; // Get the telemetry type from the first byte

    if (telemetry_type == 0){
        
        ESP_LOGI(TAG,"Telemetry priority: 0\n"); // Log telemetry type
        
        return 1;
    } 
    if (telemetry_type == 1){
        
        ESP_LOGI(TAG,"Telemetry priority: 1\n"); // Log telemetry type
        
        return 2;
    }
    if (telemetry_type == 2){
        
        ESP_LOGI(TAG,"Telemetry priority: 2\n"); // Log telemetry type
        
        return 0;
    }
    if (telemetry_type == 3){
        
        ESP_LOGI(TAG,"Telemetry priority: 3\n"); // Log telemetry type
        
        return 3;
    } 
    
    ESP_LOGW(TAG,"No telemetry type found, priority 0\n"); // Log warning message
    
    return 0; // Return least priority if no telemetry type is found

}