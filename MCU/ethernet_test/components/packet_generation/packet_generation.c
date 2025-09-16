#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <stdbool.h>

#include "packet_generation.h"
#include "sdkconfig.h"
#include "esp_random.h"

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

// Generic packet generator
uint8_t* generate_packet(uint8_t packet_type) {
    // Initialize random seed if this is first call
    static bool randomness_initialized = false;
    if (!randomness_initialized) {
        srand(time(NULL));
        randomness_initialized = true;
    }
    
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
    //print_packet_binary(packet, config->total_bytes);
    
    return packet;
}

// Packet content generators
static int32_t internal_temp = 24559;    // ~24.5°C
static int32_t external_temp = 13743;    // ~13.7°C 
static int32_t sensor_board_temp = 26797; // ~26.8°C
static int32_t altitude = 100000;        // 100km altitude

static int32_t get_random_in_range(int32_t min, int32_t max) {
    return min + (esp_random() % (max - min + 1));
}

// Update sensor values with small random changes
static void update_sensor_values(void) {
    // Random changes between -100 and +100 (small temperature variations)
    int32_t internal_offset = get_random_in_range(-100, 100);
    int32_t external_offset = get_random_in_range(-100, 100);
    int32_t sensor_board_offset = get_random_in_range(-100, 100);
    int32_t altitude_offset = get_random_in_range(-100, 100);
    
    // Update temperatures with random offsets
    internal_temp += internal_offset;
    external_temp += external_offset;
    sensor_board_temp += sensor_board_offset;
    altitude += altitude_offset;
    
    // Some bounds checking to keep values reasonable
    if (internal_temp < 15000) internal_temp = 15000;      // Min ~15°C
    if (internal_temp > 35000) internal_temp = 35000;      // Max ~35°C
    
    if (external_temp < -5000) external_temp = -5000;      // Min -5°C
    if (external_temp > 30000) external_temp = 30000;      // Max ~30°C
    
    if (sensor_board_temp < 10000) sensor_board_temp = 10000;  // Min ~10°C
    if (sensor_board_temp > 40000) sensor_board_temp = 40000;  // Max ~40°C
    
    if (altitude < 95000) altitude = 95000;    // Min 95km
    if (altitude > 105000) altitude = 105000;  // Max 105km
}

void generate_hk_content(uint8_t *packet, size_t *bit_pos) {
    // Update sensor values with small random changes
    update_sensor_values();
    
    // Get a random sequence counter
    uint16_t seq_counter = esp_random() & 0xFFFF;
    
    set_bits(packet, bit_pos, seq_counter, CONFIG_SEQ_COUNTER_SIZE);  
    
    // RTC based on current time
    uint32_t current_time = (uint32_t)time(NULL) & 0x1FFFF;  
    set_bits(packet, bit_pos, current_time, CONFIG_RTC_SIZE);  
    
    // Temperature sensors with random variations
    set_bits(packet, bit_pos, internal_temp, 32);        // Internal temp
    set_bits(packet, bit_pos, external_temp, 32);        // External temp
    set_bits(packet, bit_pos, sensor_board_temp, 32);    // Sensor board temp
    
    // GNSS with some randomness
    uint64_t gnss_value = 0x123456789ABCD + (esp_random() % 1000);
    set_bits_64(packet, bit_pos, gnss_value, 55);        // GNSS 
    
    // Altitude with random variations
    set_bits_64(packet, bit_pos, altitude, 48);          // Altitude
}

void generate_bf_content(uint8_t *packet, size_t *bit_pos) {
    // Random sequence counter
    uint16_t seq_counter = esp_random() & 0xFFFF;
    set_bits(packet, bit_pos, seq_counter, CONFIG_SEQ_COUNTER_SIZE);
    
    // RTC
    uint32_t current_time = (uint32_t)time(NULL) & 0x1FFFF;
    set_bits(packet, bit_pos, current_time, CONFIG_RTC_SIZE);
    
    // Generate bit flip data (172 bits)
    uint8_t bf_data[22]; // 172 bits = 21.5 bytes
    for (int i = 0; i < sizeof(bf_data); i++) {
        bf_data[i] = esp_random() & 0xFF;
    }
    
    set_bits_data(packet, bit_pos, bf_data, CONFIG_BITFLIP_SIZE);
}

void generate_ack_content(uint8_t *packet, size_t *bit_pos) {
    // Random sequence counter
    uint16_t seq_counter = esp_random() & 0xFFFF;
    set_bits(packet, bit_pos, seq_counter, CONFIG_SEQ_COUNTER_SIZE);
    
    // RTC based on current time
    uint32_t current_time = (uint32_t)time(NULL) & 0x1FFFF;
    set_bits(packet, bit_pos, current_time, CONFIG_RTC_SIZE);
    
    // Telecommand ACK - random value between 0-7
    uint8_t tc_ack = esp_random() % 8;
    set_bits(packet, bit_pos, tc_ack, CONFIG_TC_SIZE);
}

void generate_rad_content(uint8_t *packet, size_t *bit_pos) {
    // Random sequence counter
    uint16_t seq_counter = esp_random() & 0xFFFF;
    set_bits(packet, bit_pos, seq_counter, CONFIG_SEQ_COUNTER_SIZE);
    
    // RTC based on current time
    uint32_t current_time = (uint32_t)time(NULL) & 0x1FFFF;
    set_bits(packet, bit_pos, current_time, CONFIG_RTC_SIZE);
    
    // Generate radiation data with realistic patterns (9984 bits)
    uint8_t chunk_size = 32; 
    uint8_t rad_data[chunk_size];
    
    int remaining_bits = CONFIG_RADIATION_SIZE;
    while (remaining_bits > 0) {
        // Fill the chunk with random data
        for (int i = 0; i < chunk_size; i++) {
            rad_data[i] = esp_random() & 0xFF;
        }
        
        // Calculate how many bits to process from this chunk
        int bits_to_process = (remaining_bits > chunk_size * 8) ? chunk_size * 8 : remaining_bits;
        
        // Set the bits from this chunk
        set_bits_data(packet, bit_pos, rad_data, bits_to_process);
        
        remaining_bits -= bits_to_process;
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
            //print_packet_binary(packet, PACKET_CONFIGS[i].total_bytes);
            //printf("\n");
            free(packet);
        }
    }
    
    return 0;
}

