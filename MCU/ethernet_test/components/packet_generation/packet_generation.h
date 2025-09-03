#ifndef PACKET_GENERATION_H
#define PACKET_GENERATION_H

#include <stdint.h>
#include <stdlib.h>

// Function declarations
uint16_t calculate_crc_bits(uint8_t* packet, size_t data_bits);
void set_bits(uint8_t *buf, size_t *bit_pos, uint32_t data, int bits);
void set_bits_64(uint8_t *buf, size_t *bit_pos, uint64_t data, int bits);
void set_bits_data(uint8_t *buf, size_t *bit_pos, const uint8_t *data, int bits); // NEW

// Packet generation functions
uint8_t* generate_packet(uint8_t packet_type);
void print_packet_hex(const uint8_t *data, size_t length);
void print_packet_binary(const uint8_t *data, size_t length);

#endif // PACKET_GENERATION_H