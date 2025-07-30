#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include "sdkconfig.h"
#include "format.h"

#define CHECK_BIT(var,pos) (((var)>>(pos)) & 1)

int housekeeping_sequence_number = 1;
int bitflip_sequence_number = 1;
int radiation_sequence_number = 1;
int acknowledgement_sequence_number = 1;

// Have to do this properly, calculate on bit level
uint16_t calculate_crc(uint8_t* data, int length) {
    if (data == NULL || length <= 0) {
        return 0;
    }

    // This below is bullshit
    uint16_t crc = 0; // Initialize CRC to 0
    for (int i = 0; i < length; i++) {
        crc ^= CHECK_BIT(data[i/8],i%8); // XOR each bit of data with the current CRC value
    }
    
    return crc;
}


// Function to pack data manually into packets
uint8_t* pack_tm(uint8_t* data, int packet_size, int data_size){
    if (data == NULL) {
        return NULL;
    }
    uint8_t id = data[0] & 0b00000011; 
    uint8_t* packet = (uint8_t*)calloc(packet_size, sizeof(uint8_t));
    if (packet == NULL) {
        return NULL;
    }
    uint16_t seq_num = 0;
    int bit_offset = 0; // Bit offset to avoid padding at the end of data
    switch (id) {
        case 0:
            seq_num = housekeeping_sequence_number;
            bit_offset = 0;
            break;
        case 1:
            seq_num = bitflip_sequence_number;
            bit_offset = 0;
            break;
        case 2:
            seq_num = radiation_sequence_number;
            bit_offset = 0;
            break;
        default:
            free(packet);
            return NULL;
    }

    packet[0] = id | ((seq_num << 2) & 0b11111100);
    packet[1] = (seq_num >> 6) & 0b11111111;
    packet[2] = (seq_num >> 14) & 0b00000011; 

    // Include the first 6 bits of the data in third byte (The first two bits are id which shouldn't be in the data part)
    packet[2] |= (data[0]) & 0b11111100;

    // Don't have to change the bit offset as the 3 bytes are complete with alignment on the data bytes intact (2+16+6 = 3 bytes).
    int array_offset = 3;    
    for (int i = 1; i < data_size; i++) {
        packet[i + array_offset] = data[i];
    }

    uint16_t crc = calculate_crc(packet, packet_size - 2);
    // Place the crc into the packet with the correct bit offset (array_offset + data_size + 1 == packet_size)
    packet[array_offset + data_size - 1] |= crc << bit_offset;
    packet[array_offset + data_size] = crc >> (8 - bit_offset);
    packet[array_offset + data_size + 1] = crc >> (16 - bit_offset); 

    return packet;
}

bool is_valid_packet(uint32_t rtc, uint16_t crc, uint8_t* packet) {
    if (packet == NULL || rtc == 0 || crc == 0) {
        return false;
    }
    
    uint16_t calculated_crc = calculate_crc(packet, CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE - 2);
    
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

    // 2 bytes
    uint16_t seq_num = packet[0] << 8 | packet[1];

    // 3 bits
    uint8_t tc = packet[2] & 0b00000111; 

    // 17 bits
    uint32_t rtc = ((packet[2] & 0b11111000) << 12) | 
           (packet[3] << 4) |
           (packet[4] & 0b00001111);

    uint16_t crc = (packet[4] & 0b11110000) << 12 | 
                   (packet[5] << 4) | 
                   (packet[6] & 0b00001111);
                   
    if (!is_valid_packet(rtc, crc, packet)) {
        return NULL;
    }

    // If everything is fine, create a new data array to return and stuff the data & RTC into it
    uint8_t* data = (uint8_t*)calloc(CONFIG_ACKNOWLEDGEMENT_DATA_SIZE, sizeof(uint8_t));
    if (data == NULL) {
        return NULL; // Allocation failed
    }

    data[0] = packet[2];
    data[1] = packet[3];
    data[2] = packet[4];

    return data;
}

uint8_t* format_tm(uint8_t* data) {
    if (data == NULL) {
        return (uint8_t*)NULL;
    }

    int telemetry_type = CHECK_BIT(data[0], 0) + CHECK_BIT(data[0], 1) * 2;

    uint8_t* packet = NULL;

    if (telemetry_type == 0) {
        packet = pack_tm(data, CONFIG_HOUSEKEEPING_PACKET_SIZE, CONFIG_HOUSEKEEPING_DATA_SIZE);
        housekeeping_sequence_number++;
    } else if (telemetry_type == 1) {
        packet = pack_tm(data, CONFIG_BITFLIP_PACKET_SIZE, CONFIG_BITFLIP_DATA_SIZE);
        bitflip_sequence_number++;
    } else if (telemetry_type == 2) {
        packet = pack_tm(data, CONFIG_RADIATION_PACKET_SIZE, CONFIG_RADIATION_DATA_SIZE);
        radiation_sequence_number++;
    } else {
        return (uint8_t*)NULL;
    }

    if (packet == NULL) {
        return (uint8_t*)NULL;
    }
    return packet;

}

uint8_t* format_tc(uint8_t* data) {
    if (data == NULL) {
        return NULL;
    }
    
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

    return packet;
}
