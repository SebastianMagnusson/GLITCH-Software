#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "format.h"
#include "unity.h"

#define TC_TEST_SIZE 5
#define TM_TEST_SIZE 5

// Generate test data for telemetry packets
uint8_t* generate_test_data(int id) {
    switch(id) {
        case 0: // Housekeeping
            return (uint8_t[]){0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
                               16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27};
        case 1: // Bitflip
            return (uint8_t[]){1, 2, 3, 4, 5, 6, 7, 8};
        case 2: // Radiation
            return (uint8_t[]){2, 3, 4};
        case 3: // Acknowledgement
            return (uint8_t[]){3, 4, 5};
        default:
            return NULL;

    }
}

// Find the sequence number from a telemetry packet
uint16_t get_sequence_number(uint8_t* packet) {
    if (packet == NULL) {
        return 0;
    }

    return ((packet[0] & 0b11111100) >> 2) | ((packet[1] & 0b11111111) << 6) | ((packet[2] & 0b00000011) << 14);
}

static void test_format_tm(void) {
    uint8_t* data_in[TM_TEST_SIZE];
    uint8_t* packet[TM_TEST_SIZE];

    for (int i = 0; i < TM_TEST_SIZE; i++) {
        data_in[i] = generate_test_data(i%3);
        packet[i] = format_tm(data_in[i]);

        TEST_ASSERT_NOT_NULL(packet[i]);
        TEST_ASSERT_EQUAL_INT(i%3, *packet[i] & 0b00000011);
        TEST_ASSERT_EQUAL_INT(i/3 + 1, get_sequence_number(packet[i]));
    }

    uint8_t* data_out[TM_TEST_SIZE];

    // Make an unpacking function to verify the data

    // Check CRC

    free(data_in);
    free(data_out);
    free(packet);

}

static void test_format_tc(void) {
    uint8_t* data_in[TC_TEST_SIZE];
    uint8_t* packet[TC_TEST_SIZE];

    for (int i = 0; i < TC_TEST_SIZE; i++) {
        data_in[i] = generate_test_data(3);
        packet[i] = format_tc(data_in[i]);

        TEST_ASSERT_NOT_NULL(packet[i]);
        TEST_ASSERT_EQUAL_INT(3, *packet[i] & 0b00000011);
        TEST_ASSERT_EQUAL_INT(i + 1, get_sequence_number(packet[i]));

    }

    int j;
    uint8_t* data_out[TC_TEST_SIZE];
    for (int i = 0; i < TC_TEST_SIZE; i++) {
        data_out[i] = unpack_tc(packet[i]);
        TEST_ASSERT_NOT_NULL(data_out[i]);
        
        for (j = 0; j < 1; j++) {
            TEST_ASSERT_EQUAL_INT(data_in[i][j], data_out[i][j]);
        }
        TEST_ASSERT_EQUAL_INT(data_in[i][j+1] & 0b00001111, data_out[i][j+1] & 0b00001111);
    }
    
    // find a way to check size, maybe look for the padding ig

    // Additional checks for CRC and packet structure

    free(data_in);
    free(data_out);
    free(packet);

}