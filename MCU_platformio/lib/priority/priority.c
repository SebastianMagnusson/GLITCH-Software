#include <stdio.h>

#ifndef es32dev
#include <stdint.h>
#include <stdlib.h>
#endif

#ifdef es32dev
#include "esp_log.h"
#endif

#include "priority.h"

#define CHECK_BIT(var,pos) (((var)>>(pos)) & 1) // Macro to check if a bit is set in a variable

/// @brief Function to assign priority of the data comming from the FPGA
/// @param data: Pointer to the data buffer (first byte of the data)
/// @return int Priority of the data (0-3)
int priority_assign(uint8_t* data) {

    if (data == NULL) { // Check if data is NULL
        #ifdef es32dev
        ESP_LOGE("UART","Data is NULL, returning priority 0\n"); // Log error message
        #endif
        return 0; // Return default priority if data is NULL
    }

    int telemetry_type = CHECK_BIT(data[0], 0) + CHECK_BIT(data[0], 1) * 2; // Get the telemetry type from the first byte

    if (telemetry_type == 0){
        #ifdef es32dev
        ESP_LOGI("UART","Telemetry priority: 0\n"); // Log telemetry type
        #endif
        return 1;
    } 
    if (telemetry_type == 1){
        #ifdef es32dev
        ESP_LOGI("UART","Telemetry priority: 1\n"); // Log telemetry type
        #endif
        return 2;
    }
    if (telemetry_type == 2){
        #ifdef es32dev
        ESP_LOGI("UART","Telemetry priority: 2\n"); // Log telemetry type
        #endif
        return 0;
    }
    if (telemetry_type == 3){
        #ifdef es32dev
        ESP_LOGI("UART","Telemetry priority: 3\n"); // Log telemetry type
        #endif
        return 3;
    } 
    #ifdef es32dev
    ESP_LOGW("UART","No telemetry type found, priority 0\n"); // Log warning message
    #endif
    return 0; // Return least priority if no telemetry type is found

}
