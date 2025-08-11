#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "packet_generation.h"
#include "sdkconfig.h"

// Function declarations
void generate_hk_content(uint8_t *packet, size_t *bit_pos);
void generate_bf_content(uint8_t *packet, size_t *bit_pos);
void generate_ack_content(uint8_t *packet, size_t *bit_pos);
void generate_rad_content(uint8_t *packet, size_t *bit_pos);

// Packet configuration structure
typedef struct {
    uint8_t packet_id;
    size_t total_bits;
    size_t total_bytes;
    const char* name;
} packet_config_t;

// Packet configurations
static const packet_config_t PACKET_CONFIGS[] = {
    {CONFIG_HOUSEKEEPING_PACKET_ID, 250, CONFIG_HOUSEKEEPING_PACKET_SIZE, "HK"},
    {CONFIG_BITFLIP_PACKET_ID, 223, CONFIG_BITFLIP_PACKET_SIZE, "BF"},
    {CONFIG_ACKNOWLEDGEMENT_PACKET_ID, 54, CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE, "ACK"},
    {CONFIG_RADIATION_PACKET_ID, 10035, CONFIG_RADIATION_PACKET_SIZE, "RAD"}
};

#define NUM_PACKET_TYPES (sizeof(PACKET_CONFIGS) / sizeof(PACKET_CONFIGS[0]))

// CRC calculation - bit-level processing
uint16_t calculate_crc_bits(uint8_t* packet, size_t data_bits) {
    uint16_t crc = 0xFFFF;
    const uint16_t polynomial = 0x1021;
    
    for (size_t i = 0; i < data_bits; i++) {
        int byte_index = i / 8;
        int bit_index = 7 - (i % 8);
        int bit = (packet[byte_index] >> bit_index) & 1;
        
        crc ^= (bit << 15);
        if (crc & 0x8000) {
            crc = (crc << 1) ^ polynomial;
        } else {
            crc <<= 1;
        }
    }
    
    return crc;
}

// Helper function to set bits into buffer - fixed signature to match header
void set_bits(uint8_t *buf, size_t *bit_pos, uint32_t data, int bits) {
    for (int i = bits - 1; i >= 0; i--) {
        int byte_index = (*bit_pos) / 8;
        int bit_index = 7 - ((*bit_pos) % 8);
        buf[byte_index] |= ((data >> i) & 1) << bit_index;
        (*bit_pos)++;
    }
}

// Helper function for larger values
void set_bits_64(uint8_t *buf, size_t *bit_pos, uint64_t data, int bits) {
    for (int i = bits - 1; i >= 0; i--) {
        int byte_index = (*bit_pos) / 8;
        int bit_index = 7 - ((*bit_pos) % 8);
        buf[byte_index] |= ((data >> i) & 1) << bit_index;
        (*bit_pos)++;
    }
}

// Generic packet generator
uint8_t* generate_packet(uint8_t packet_type) {
    const packet_config_t* config = NULL;
    
    // Find packet configuration
    for (size_t i = 0; i < NUM_PACKET_TYPES; i++) {
        if (PACKET_CONFIGS[i].packet_id == packet_type) {
            config = &PACKET_CONFIGS[i];
            break;
        }
    }
    
    if (!config) {
        printf("Error: Unknown packet type %d\n", packet_type);
        return NULL;
    }
    
    printf("Generating %s Packet...\n", config->name);
    uint8_t *packet = calloc(config->total_bytes, sizeof(uint8_t));
    if (!packet) {
        printf("Error: Memory allocation failed\n");
        return NULL;
    }
    
    size_t bit_pos = 0;
    
    // Common header fields for all packets
    set_bits(packet, &bit_pos, config->packet_id, CONFIG_ID_SIZE);
    
    // Packet-specific content
    switch (packet_type) {
        case CONFIG_HOUSEKEEPING_PACKET_ID:
            generate_hk_content(packet, &bit_pos);
            break;
        case CONFIG_BITFLIP_PACKET_ID:
            generate_bf_content(packet, &bit_pos);
            break;
        case CONFIG_ACKNOWLEDGEMENT_PACKET_ID:
            generate_ack_content(packet, &bit_pos);
            break;
        case CONFIG_RADIATION_PACKET_ID:
            generate_rad_content(packet, &bit_pos);
            break;
    }
    
    uint16_t crc = calculate_crc_bits(packet, bit_pos);
    set_bits(packet, &bit_pos, crc, CONFIG_CRC_SIZE);
    
    printf("%s Packet total bits used: %zu (expected: %zu)\n", 
           config->name, bit_pos, config->total_bits);
    //print packet for debugging in bits
    print_packet_binary(packet, config->total_bytes);
    
    return packet;
}

// Packet content generators
void generate_hk_content(uint8_t *packet, size_t *bit_pos) {
    set_bits(packet, bit_pos, 0xFFFF, CONFIG_SEQ_COUNTER_SIZE);     // Seq Counter
    set_bits(packet, bit_pos, 0x1FFFF, CONFIG_RTC_SIZE);            // RTC
    set_bits(packet, bit_pos, 0x12345678, 32);                      // Internal temp
    set_bits(packet, bit_pos, 0x87654321, 32);                      // External temp
    set_bits(packet, bit_pos, 0xABCDEF12, 32);                      // Sensor board temp
    set_bits(packet, bit_pos, 0xFFFFFFFF, 32);                      // GNSS part 1
    set_bits(packet, bit_pos, 0x7FFFFF, 23);                        // GNSS part 2 (55 total)
    set_bits_64(packet, bit_pos, 0xFFFFFFFFFFFFULL, 48);            // Altitude
}

void generate_bf_content(uint8_t *packet, size_t *bit_pos) {
    set_bits(packet, bit_pos, 99, CONFIG_SEQ_COUNTER_SIZE);         // Seq Counter
    set_bits(packet, bit_pos, 0x1FFFF, CONFIG_RTC_SIZE);            // RTC
    
    // Generate bit flip data (172 bits)
    for (int i = 0; i < CONFIG_BITFLIP_SIZE; i += 8) {
        int remaining_bits = (CONFIG_BITFLIP_SIZE - i) >= 8 ? 8 : (CONFIG_BITFLIP_SIZE - i);
        set_bits(packet, bit_pos, (i % 16 < 8) ? 0xFF : 0x00, remaining_bits);
    }
}

void generate_ack_content(uint8_t *packet, size_t *bit_pos) {
    set_bits(packet, bit_pos, 1, CONFIG_SEQ_COUNTER_SIZE);          // Seq Counter
    set_bits(packet, bit_pos, 0x1FFFF, CONFIG_RTC_SIZE);            // RTC
    set_bits(packet, bit_pos, 0x7, CONFIG_TC_SIZE);                 // Telecommand ACK
}

void generate_rad_content(uint8_t *packet, size_t *bit_pos) {
    set_bits(packet, bit_pos, 7, CONFIG_SEQ_COUNTER_SIZE);          // Seq Counter
    set_bits(packet, bit_pos, 0x1FFFF, CONFIG_RTC_SIZE);            // RTC
    
    // Generate radiation data (9984 bits)
    for (int i = 0; i < CONFIG_RADIATION_SIZE; i += 8) {
        int remaining_bits = (CONFIG_RADIATION_SIZE - i) >= 8 ? 8 : (CONFIG_RADIATION_SIZE - i);
        uint8_t pattern = (i / 8) % 256;
        set_bits(packet, bit_pos, pattern, remaining_bits);
    }
}

void print_packet_hex(const uint8_t *data, size_t length) {
    printf("Packet (%zu bytes): ", length);
    for (size_t i = 0; i < length; i++) {
        printf("%02X ", data[i]);
        if ((i + 1) % 16 == 0) printf("\n                   ");
    }
    printf("\n");
}

void print_packet_binary(const uint8_t *data, size_t length) {
    printf("Packet (%zu bits): ", length * 8);
    for (size_t i = 0; i < length && i < 64; i++) { // 64 bytes only
        for (int b = 7; b >= 0; b--) {
            printf("%d", (data[i] >> b) & 1);
        }
        printf(" ");
    }
    if (length > 64) printf("...");
    printf("\n");
}

int main() {    
    const uint8_t packet_types[] = {
        CONFIG_HOUSEKEEPING_PACKET_ID,
        CONFIG_BITFLIP_PACKET_ID,
        CONFIG_ACKNOWLEDGEMENT_PACKET_ID,
        CONFIG_RADIATION_PACKET_ID
    };
    
    for (size_t i = 0; i < NUM_PACKET_TYPES; i++) {
        uint8_t *packet = generate_packet(packet_types[i]);
        if (packet) {
            print_packet_binary(packet, PACKET_CONFIGS[i].total_bytes);
            printf("\n");
            free(packet);
        }
    }
    
    return 0;
}

// ...existing code...

// New function to copy bytes directly into packet
void set_bits_data(uint8_t *buf, size_t *bit_pos, const uint8_t *data, int bits) {
    for (int i = 0; i < bits; i++) {
        int src_byte = i / 8;
        int src_bit  = 7 - (i % 8);
        int bit = (data[src_byte] >> src_bit) & 1;
        int dst_byte = (*bit_pos) / 8;
        int dst_bit  = 7 - ((*bit_pos) % 8);
        buf[dst_byte] |= bit << dst_bit;
        (*bit_pos)++;
    }
}

