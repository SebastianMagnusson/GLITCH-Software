#include <stdio.h>
#include "esp_log.h"

/// @brief Function to assign priority based on telemetry type
/// @param uint8_t* : Pointer to the data to be evaluated (first byte of the data)
/// @return int: The priority level (0-3) based on telemetry type
int priority_assign(uint8_t* data);