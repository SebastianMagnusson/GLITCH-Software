#include <stdint.h>

#pragma once

/// @brief Takes a telemetry data buffer and formats it into the correct telemetry structure.
/// @param data The telemetry data buffer to be formatted.
/// @return The formatted telemetry data as a byte array.
uint8_t* format_tm(uint8_t* data);

/// @brief Takes a telecommand data buffer and formats it into the correct acknowledgement structure.
/// @param data The telecommand data buffer to be formatted.
/// @return The formatted telemetry data as a byte array.
uint8_t* format_tc(uint8_t* data);