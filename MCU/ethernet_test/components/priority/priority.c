#include <stdio.h>
#include "esp_log.h"
#include "sdkconfig.h"
#include "priority.h"

#define CHECK_BIT(var,pos) (((var)>>(pos)) & 1) // Macro to check if a bit is set in a variable

static const char *TAG = "Priority"; 

int priority_assign(uint8_t* data) {
    if (data == NULL) {
        return 4; 
    }

    int telemetry_type = (data[0] >> 6) & 0b00000011;  
    
    if (telemetry_type == 0){  // HK
        return 1;
    } 
    if (telemetry_type == 1){  // BF
        return 2;
    }
    if (telemetry_type == 2){  // RAD
        return 0;
    }
    if (telemetry_type == 3){  // ACK
        return 3;
    } 
    
    ESP_LOGW(TAG,"No telemetry type found, priority 4\n"); 
    return 4;
}