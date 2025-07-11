#include "format.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>

#define CHECK_BIT(var,pos) (((var)>>(pos)) & 1) // Macro to check if a bit is set in a variable

#define HOUSEKEEPING_PACKET_SIZE 32
#define HOUSEKEEPING_DATA_SIZE 28

#define ACKNOWLEDGEMENT_PACKET_SIZE 7

struct housekeeping_telemetry {
    uint8_t id : 2;
    uint16_t sequence_number : 16;
    uint8_t data[28]; // Need to change this to the actual size of the data
    uint16_t crc : 16;
};

struct bitflip_telemetry {
    uint8_t id : 2;
    uint16_t sequence_number : 16;
    uint8_t data[28]; // Need to change this to the actual size of the data
    uint16_t crc : 16;
};

struct radiation_telemetry {
    uint8_t id : 2;
    uint16_t sequence_number : 16;
    uint8_t data[28]; // Need to change this to the actual size of the data
    uint16_t crc : 16;
};

struct acknowledgement_telemetry {
    uint8_t id : 2;
    uint16_t sequence_number : 16;
    uint8_t data : 2; // Need to change this to the actual size of the data
    uint16_t crc : 16;
};

int housekeeping_sequence_number = 0; // Global variable to keep track of the sequence number for housekeeping telemetry
int bitflip_sequence_number = 0; // Global variable to keep track of the sequence number for bitflip telemetry
int radiation_sequence_number = 0; // Global variable to keep track of the sequence number for radiation telemetry
int acknowledgement_sequence_number = 0; // Global variable to keep track of the sequence number for acknowledgement telemetry

uint16_t calculate_crc(uint8_t* data, int length) {
    if (data == NULL || length <= 0) {
        return 0; // Return 0 if data is NULL or length is invalid
    }

    uint16_t crc = 0; // Initialize CRC to 0
    for (int i = 0; i < length; i++) {
        crc ^= CHECK_BIT(data[i/8],i%8); // XOR each bit of data with the current CRC value
    }
    
    return crc; // Return the calculated CRC value
}


uint8_t* format_tm(uint8_t* data) {
    if (data == NULL) {
        return NULL; // Return NULL if data is NULL
    }

    int telemetry_type = CHECK_BIT(data[0], 0) + CHECK_BIT(data[0], 1) * 2; // Get the telemetry type from the first byte

    if (telemetry_type == 0) {
        struct housekeeping_telemetry* formatted_data = (struct housekeeping_telemetry*)malloc(sizeof(struct housekeeping_telemetry)); // Allocate memory for formatted data
        formatted_data->id = 0; // Set the telemetry type ID
        formatted_data->sequence_number = housekeeping_sequence_number;
        memcpy(formatted_data->data, data, sizeof(formatted_data->data)); // Copy data into struct array, divide by 4 to get rid of type
        formatted_data->crc = calculate_crc(data,28*8); // calculate crc, update this to the actual size of the data

        housekeeping_sequence_number++; // Increment the sequence number for the next telemetry data
        return (uint8_t*)formatted_data; // Return the formatted data as a byte array

    } else if (telemetry_type == 1) {
        struct bitflip_telemetry* formatted_data = (struct bitflip_telemetry*)malloc(sizeof(struct bitflip_telemetry)); // Allocate memory for formatted data
        formatted_data->id = 1; // Set the telemetry type ID
        formatted_data->sequence_number = bitflip_sequence_number;
        memcpy(formatted_data->data, data, sizeof(formatted_data->data)); // Copy data into struct array, divide by 4 to get rid of type
        formatted_data->crc = calculate_crc(data,28*8); // calculate crc, update this to the actual size of the data

        bitflip_sequence_number++; // Increment the sequence number for the next telemetry data
        return (uint8_t*)formatted_data; // Return the formatted data as a byte array

    } else if (telemetry_type == 2) {
        struct radiation_telemetry* formatted_data = (struct radiation_telemetry*)malloc(sizeof(struct radiation_telemetry)); // Allocate memory for formatted data
        formatted_data->id = 2; // Set the telemetry type ID
        formatted_data->sequence_number = radiation_sequence_number;
        memcpy(formatted_data->data, data, sizeof(formatted_data->data)); // Copy data into struct array, divide by 4 to get rid of type
        formatted_data->crc = calculate_crc(data,28*8); // calculate crc, update this to the actual size of the data

        radiation_sequence_number++; // Increment the sequence number for the next telemetry data
        return (uint8_t*)formatted_data; // Return the formatted data as a byte array

    } else {
        return (uint8_t*)NULL; // Return NULL if telemetry type is invalid
    }


}

uint8_t* format_tc(uint8_t* data) {
    if (data == NULL) {
        return NULL; // Return NULL if data is NULL
    }

    uint8_t packet[ACKNOWLEDGEMENT_PACKET_SIZE] = {0};
    packet[0] = 3 | ((acknowledgement_sequence_number << 2) & 0b11111100); // Set the first byte with telemetry type ID and sequence number
    packet[1] = (acknowledgement_sequence_number >> 6) & 0b11111111; // Set the second byte with the next 8 bits of sequence number
    packet[2] = (acknowledgement_sequence_number >> 14) & 0b00000011; // Set the third byte with the last 2 bits of sequence number

    packet[2] |= (data[0]) & 0b11111100; // Include the first 6 bits of the data in the third byte
    packet[3] = ((data[0] >> 6) & 0b00000011) | (data[1] & 0b11111100);
    packet[4] = ((data[1] >> 6) & 0b00000011) | (data[2] & 0b00111100);
    
    uint16_t crc = calculate_crc(packet, ACKNOWLEDGEMENT_PACKET_SIZE - 2);
    packet[ACKNOWLEDGEMENT_PACKET_SIZE - 3] |= (crc << 6) & 0b11000000;
    packet[ACKNOWLEDGEMENT_PACKET_SIZE - 2] = (crc >> 2);
    packet[ACKNOWLEDGEMENT_PACKET_SIZE - 1] = ((crc >> 10) & 0b00111111);

    return packet;
}



// More practical approach: Manual byte-level packing
// This creates a fixed-size buffer and manually packs data into it

#define PACKED_HOUSEKEEPING_SIZE 31  // 2bits + 16bits + 28bytes + 16bits = 30.25 bytes, rounded up

typedef struct {
    uint8_t packed_data[PACKED_HOUSEKEEPING_SIZE];
} manual_packed_telemetry_t;

// Function to pack data manually into packets
uint8_t* pack_data(uint8_t* data){
    if (data == NULL) {
        return NULL; // Return NULL if data is NULL
    }
    uint8_t id = data[0] & 0b00000011; // Extract the first two bits for the telemetry type ID
    switch (id){
        case 1: { // Housekeeping telemetry
            uint8_t packet[HOUSEKEEPING_PACKET_SIZE] = {0};
            packet[0] = id | ((housekeeping_sequence_number << 2) & 0b11111100);
            packet[1] = (housekeeping_sequence_number >> 6) & 0b11111111;
            packet[2] = (housekeeping_sequence_number >> 14) & 0b00000011; 

            // Include the first 6 bits of the data in third byte
            packet[2] |= (data[0]) & 0b11111100;

            // Pack the data into the packet with bit offset 2 and array offset 3
            int a_offset = 3;
            
            for (int i = 0; i < HOUSEKEEPING_DATA_SIZE-1; i++) {
                packet[i + a_offset] = data[i+1];
            }

            uint16_t crc = calculate_crc(packet, HOUSEKEEPING_PACKET_SIZE - 2); // Calculate CRC for the packet
            packet[HOUSEKEEPING_PACKET_SIZE - 2] = (crc >> 8) & 0xFF; // Store the high byte of CRC
            packet[HOUSEKEEPING_PACKET_SIZE - 1] = crc & 0xFF; // Store the low byte of CRC

            return packet;
        }


    }
    
    return (uint8_t*)NULL; 
}

// Function to unpack the manually packed data
uint8_t unpack_TC(uint8_t* packet) {
    if (packet == NULL) {
        return (uint8_t)NULL; // Return if packet is NULL
    }
    
    // Unpack sequence number (first 16 bits)
    uint16_t seq_num = packet[0] << 8 | packet[1];

    // Unpack data(TC) (next 3 bits)
    uint8_t data = packet[2] & 0b00000111; 

    // Unpack RTC (next 17 bits)
    uint32_t rtc = ((packet[2] & 0b11111000) << 12) | 
           (packet[3] << 4) |
           (packet[4] & 0b00001111);

    // Unpack CRC (last 16 bits)
    uint16_t crc = (packet[4] & 0b11110000) << 12 | 
                   (packet[5] << 4) | 
                   (packet[6] & 0b00001111);
                   
    // Need to add error checking for everything here before returning

    return data;
}