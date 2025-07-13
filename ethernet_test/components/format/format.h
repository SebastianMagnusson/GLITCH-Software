#include <stdint.h>

#pragma once

/// @brief Takes a telemetry data buffer and formats it into the correct telemetry structure.
/// @param data The telemetry data buffer to be formatted.
/// @return The formatted telemetry data as a byte array.
uint8_t* format_tm(uint8_t* data);

/// @brief Unpacks a telecommand packet into its components.
/// @param packet The telecommand packet to be unpacked.
/// @return A byte array containing the unpacked telecommand data, or NULL if the packet is invalid.
uint8_t* unpack_tc(uint8_t* packet);

/// @brief Takes a telecommand data buffer and formats it into the correct acknowledgement structure.
/// @param data The telecommand data buffer to be formatted.
/// @return The formatted telemetry data as a byte array.
uint8_t* format_tc(uint8_t* data);
