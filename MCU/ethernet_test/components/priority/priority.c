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

    int telemetry_type = CHECK_BIT(data[0], 0) + CHECK_BIT(data[0], 1) * 2; 
    if (telemetry_type == 0){
        return 1;
    } 
    if (telemetry_type == 1){
        return 2;
    }
    if (telemetry_type == 2){
        return 0;
    }
    if (telemetry_type == 3){
        return 3;
    } 
    
    ESP_LOGW(TAG,"No telemetry type found, priority 0\n"); 
    
    return 4; // Return least priority if no telemetry type is found

}