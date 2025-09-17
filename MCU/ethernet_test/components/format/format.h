#include <stdint.h>

#pragma once

/// @brief Unpacks a telecommand packet into its components.
/// @param uint8_t* The telecommand packet to be unpacked.
/// @return uint8_t*: A byte array containing the unpacked telecommand data, or NULL if the packet is invalid.
uint8_t* unpack_tc(uint8_t* packet);

/// @brief Takes a telecommand data buffer and formats it into the correct acknowledgement structure.
/// @param uint8_t* The telecommand data buffer to be formatted.
/// @return uint8_t*: The formatted telemetry data as a byte array.
uint8_t* format_tc(uint8_t* data);
