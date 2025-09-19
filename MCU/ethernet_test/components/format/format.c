#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include "sdkconfig.h"
#include "format.h"
#include "packet_generation.h"
#include "esp_log.h"

#define CHECK_BIT(var,pos) (((var)>>(pos)) & 1)

int housekeeping_sequence_number = 1;
int bitflip_sequence_number = 1;
int radiation_sequence_number = 1;
int acknowledgement_sequence_number = 1;


// Add this function after calculate_crc

// New helper: copy bits from a bit offset in the source buffer
void set_bits_data_offset(uint8_t *dest, size_t *dest_bit_pos, const uint8_t *src, size_t src_bit_offset, size_t nbits) {
    for (size_t i = 0; i < nbits; ++i) {
        size_t src_total_bit = src_bit_offset + i;
        size_t src_byte = src_total_bit / 8;
        size_t src_bit = 7 - (src_total_bit % 8);
        uint8_t bit_val = (src[src_byte] >> src_bit) & 1;

        size_t dest_byte = (*dest_bit_pos + i) / 8;
        size_t dest_bit = 7 - ((*dest_bit_pos + i) % 8);
        dest[dest_byte] |= (bit_val << dest_bit);
    }
    *dest_bit_pos += nbits;
}

bool validate_crc_mcu(uint8_t* packet, int total_length) {
    if (packet == NULL || total_length < 3) {
        return false;
    }
    
    // Extract CRC from last 2 bytes
    uint16_t received_crc = (packet[total_length - 2] << 8) | packet[total_length - 1];
    
    // Calculate CRC for all data except the CRC bytes
    uint16_t calculated_crc = calculate_crc_bits(packet, total_length - 2);
    
    return received_crc == calculated_crc;
}


// Function to pack data manually into packets
uint8_t* pack_tm(uint8_t* data, int packet_size, int data_bits) {
    if (data == NULL) {
        return NULL;
    }

    // 1. Read ID (first 2 bits)
    uint8_t id = (data[0] >> 6) & 0x03;

    // 2. Get sequence number for this type
    uint16_t seq_num = 0;
    switch (id) {
        case 0: seq_num = housekeeping_sequence_number++; break;
        case 1: seq_num = bitflip_sequence_number++; break;
        case 2: seq_num = radiation_sequence_number++; break;
        default: return NULL;
    }

    // 3. Allocate packet buffer
    uint8_t* packet = (uint8_t*)calloc(packet_size, sizeof(uint8_t));
    if (!packet) return NULL;

    size_t bit_pos = 0;

    // 4. Write ID (2 bits)
    set_bits(packet, &bit_pos, id, 2);

    // 5. Write sequence number (16 bits)
    set_bits(packet, &bit_pos, seq_num, 16);

    // 6. Write the rest of the FPGA data (skip the first 2 bits)
    set_bits_data_offset(packet, &bit_pos, data, 2, data_bits - 2);

    // 7. Calculate and write CRC (16 bits)
    uint16_t crc = calculate_crc_bits(packet, bit_pos);
    set_bits(packet, &bit_pos, crc, 16);

    // 8. Padding is handled by calloc and bit_pos logic

    return packet;
}

bool is_valid_packet(uint32_t rtc, uint16_t crc, uint8_t* packet) {
    if (packet == NULL || rtc == 0 || crc == 0) {
        return false;
    }
    
    uint16_t calculated_crc = calculate_crc_bits(packet, CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE - 2);
    
    // Check if the calculated CRC matches the provided CRC
    if (calculated_crc != crc) {
        return false;
    }

    // Additional checks to be added here, such as checking RTC validity

    return true;
}

uint8_t* unpack_tc(uint8_t* packet) {
    if (packet == NULL) {
        return (uint8_t*)NULL;
    }
    
    // // 2 bytes
    // uint16_t seq_num = packet[0] << 8 | packet[1];

    // // 3 bits
    // uint8_t tc = packet[2] >> 5 & 0b00000111; 

    // // 17 bits
    // uint32_t rtc = ((packet[2] & 0b00011111) << 12) | 
    //        (packet[3] << 4) |
    //        ((packet[4] >> 4) & 0b00001111);

    // uint16_t crc = (packet[4] & 0b00001111) << 12 | 
    //                (packet[5] << 4) | 
    //                ((packet[6] >> 4) & 0b00001111);
    
                  
    //validate crc
    if (!validate_crc_mcu(packet, CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE)) {
        ESP_LOGE("Format", "Invalid CRC in received TC packet");
        return NULL;
    }
    // If everything is fine, create a new data array to return and stuff the data & RTC into it
    uint8_t* data = (uint8_t*)calloc((CONFIG_ACKNOWLEDGEMENT_DATA_SIZE + 7) / 8, sizeof(uint8_t));
    if (data == NULL) {
        return NULL; // Allocation failed
    }

    data[0] = packet[2];
    data[1] = packet[3];
    data[2] = packet[4];

    return data;
}

uint8_t* format_tc(uint8_t* data) {
    if (data == NULL) {
        return NULL;
    }

    uint8_t *packet = calloc(CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE, sizeof(uint8_t));

    size_t bit_pos = 0;
    set_bits(packet, &bit_pos, CONFIG_ACKNOWLEDGEMENT_PACKET_ID, CONFIG_ID_SIZE);            // ID: 2 bits
    set_bits(packet, &bit_pos, acknowledgement_sequence_number, CONFIG_SEQ_COUNTER_SIZE);    // Seq: 16 bits
    set_bits_data(packet, &bit_pos, data, CONFIG_ACKNOWLEDGEMENT_DATA_SIZE);                 // Data: ? bits
    
    // Calculate CRC on actual data bits
    size_t data_bits = bit_pos;
    uint16_t crc = calculate_crc_bits(packet, data_bits);
    
    set_bits(packet, &bit_pos, crc, CONFIG_CRC_SIZE);                                        // CRC: 16 bits
    ESP_LOGI("Format", "Acknowledgement crc: %04X", crc);
    acknowledgement_sequence_number++;
    /*
    uint8_t* packet = (uint8_t*)calloc(CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE, sizeof(uint8_t));
    packet[0] = 3 | ((acknowledgement_sequence_number << 2) & 0b11111100);
    packet[1] = (acknowledgement_sequence_number >> 6) & 0b11111111;
    packet[2] = (acknowledgement_sequence_number >> 14) & 0b00000011;

    packet[2] |= (data[0] << 2) & 0b11111100;
    packet[3] = ((data[0] >> 6) & 0b00000011) | ((data[1] << 2) & 0b11111100);
    packet[4] = ((data[1] >> 6) & 0b00000011) | ((data[2] << 2) & 0b00111100);
    
    uint16_t crc = calculate_crc(packet, CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE - 2);
    packet[CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE - 3] |= (crc << 6) & 0b11000000;
    packet[CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE - 2] = (crc >> 2);
    packet[CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE - 1] = ((crc >> 10) & 0b00111111);
    */
    return packet;
}
