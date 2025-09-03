#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "buffer.h"
#include "unity.h"
#include "sdkconfig.h"

#define TM_TESTS 5
#define TM_TEST_SIZE (TM_TESTS * 4)
#define TC_TEST_SIZE 10


void setUp(void) {
    buffer_init(); // Initialize the buffer before each test
}

void tearDown(void) {
    buffer_deinit(); // Deinitialize the buffer after each test
}

uint8_t* generate_test_data(int id) {
    switch(id) {
        case 0:
            return (uint8_t*)"Test Data 0";
        case 1:
            return (uint8_t*)"Test Data 1";
        case 2:
            return (uint8_t*)"Test Data 2";
        case 3:
            return (uint8_t*)"Test Data 3";
        case 4: //TC
            return (uint8_t*)"Test Data 4";
        default:
            return (uint8_t*)"Unknown Data";
    }

}

static void test_buffer_tm(void) {
    uint8_t* test_data[TM_TEST_SIZE];
    for (int i = 0; i < TM_TEST_SIZE; i++) {
        test_data[i] = generate_test_data(i % 4);
        buffer_add_tm(i % 4, test_data[i]);
    }

    // Check if the buffer is empty before adding frames
    uint8_t* empty_data = buffer_retreive_tm();
    TEST_ASSERT_NULL(empty_data);
    frame_tm* head_tm = peek_tm(1);
    TEST_ASSERT_EQUAL_NULL(head_tm);

    // Adds TM frames to the buffer with different priorities and checks if they are added correctly
    for (int i = 0; i < TM_TEST_SIZE; i++) {
        frame_tm* frame = peek_tm(i);
        TEST_ASSERT_NOT_NULL(frame);
        TEST_ASSERT_EQUAL_CHAR(*test_data[i%TM_TESTS * TM_TESTS + i/TM_TESTS], *frame->data);
        TEST_ASSERT_EQUAL_INT(i/TM_TESTS, frame->priority);
    }

    // Retrieve frames from the buffer and checks order
    for (int i = 0; i < TM_TEST_SIZE; i++) {
        uint8_t* retrieved_data = buffer_retreive_tm();
        TEST_ASSERT_NOT_NULL(retrieved_data);
        TEST_ASSERT_EQUAL_CHAR(*test_data[i%TM_TESTS * TM_TESTS + i/TM_TESTS], *retrieved_data);
        frame_tm* frame = peek_tm(1);
        TEST_ASSERT_NOT_NULL(frame);
        TEST_ASSERT_EQUAL_CHAR(*test_data[i%TM_TESTS * TM_TESTS + i/TM_TESTS], *frame->data);
    }

    // Check if the buffer is empty after all frames are retrieved
    empty_data = buffer_retreive_tm();
    TEST_ASSERT_NULL(empty_data);
    head_tm = peek_tm(0);
    TEST_ASSERT_NULL(head_tm);

}

static void test_buffer_add_tc(void) {
    uint8_t* test_data[TC_TEST_SIZE];
    for (int i = 0; i < TC_TEST_SIZE; i++) {
        test_data[i] = generate_test_data(4);
        buffer_add_tc(test_data[i]);
    }

    // Check if the buffer is empty before adding frames
    uint8_t* empty_data = buffer_retreive_tc();
    TEST_ASSERT_NULL(empty_data);
    uint8_t* head_tc = peek_tc(0);
    TEST_ASSERT_NULL(head_tc);

    // Adds TC frames to the buffer and checks if they are added correctly
    for (int i = 0; i < TC_TEST_SIZE; i++) {
        uint8_t* retrieved_data = peek_tc(i);
        TEST_ASSERT_NOT_NULL(retrieved_data);
        TEST_ASSERT_EQUAL_CHAR(*test_data[i], *retrieved_data);
    }

    // Retrieve TC frames from the buffer and checks order
    for (int i = 0; i < TC_TEST_SIZE; i++) {
        uint8_t* retrieved_data = buffer_retreive_tc();
        TEST_ASSERT_NOT_NULL(retrieved_data);
        TEST_ASSERT_EQUAL_CHAR(*test_data[i], *retrieved_data);
        uint8_t* peeked_data = peek_tc(i);
        TEST_ASSERT_NOT_NULL(peeked_data);
        TEST_ASSERT_EQUAL_CHAR(*test_data[i], *peeked_data);
    }

    // Check if the buffer is empty after all frames are retrieved
    empty_data = buffer_retreive_tc();
    TEST_ASSERT_NULL(empty_data);
    head_tc = peek_tc(0);
    TEST_ASSERT_NULL(head_tc);

}


typedef struct {
    uint8_t *data;
    size_t bit_length;
} Packet;

// Helper function to set bits into the buffer
void set_bits(uint8_t *buf, size_t *bit_pos, uint32_t value, int bits) {
    for (int i = bits - 1; i >= 0; i--) {
        int byte_index = (*bit_pos) / 8;
        int bit_index = 7 - ((*bit_pos) % 8);
        buf[byte_index] |= ((value >> i) & 1) << bit_index;
        (*bit_pos)++;
    }
}

// Helper function to set bits from a byte array into the buffer
void set_bits_2(uint8_t* buf, size_t* bit_pos, const uint8_t* value, int bits) {
    for (int i = bits - 1; i >= 0; i--) {
        int byte_index = (*bit_pos) / 8;
        int bit_index = 7 - ((*bit_pos) % 8);
        buf[byte_index] |= ((value[(i+2) / 8] >> ((i+2) % 8)) & 1) << bit_index;
        (*bit_pos)++;
    }
}

// Print packet in binary
void print_packet_binary(const Packet *pkt) {
    printf("Packet (%zu bits):\n", pkt->bit_length);
    for (size_t i = 0; i < (pkt->bit_length + 7) / 8; i++) {
        for (int b = 7; b >= 0; b--) {
            printf("%d", (pkt->data[i] >> b) & 1);
        }
        printf(" ");
    }
    printf("\n");
}

// Print packet in hexadecimal
void print_packet_hex(const Packet *pkt) {
    printf("Packet (%zu bits):\n", pkt->bit_length);
    for (size_t i = 0; i < (pkt->bit_length + 7) / 8; i++) {
        printf("%02X ", pkt->data[i]);
    }
    printf("\n");
}
/*
Packet generate_HK_packet() {
    size_t total_bits = CONFIG_ID_SIZE + CONFIG_SEQ_COUNTER_SIZE + CONFIG_RTC_SIZE + CONFIG_GNSS_SIZE + CONFIG_TEMP_SIZE + CONFIG_ALT_SIZE + CONFIG_CRC_SIZE;
    size_t total_bytes = CONFIG_HOUSEKEEPING_PACKET_SIZE;
    Packet pkt = { calloc(total_bytes, 1), total_bits };

    size_t bit_pos = 0;
    set_bits(pkt.data, &bit_pos, 2, CONFIG_ID_SIZE);            // ID
    set_bits(pkt.data, &bit_pos, 42, CONFIG_SEQ_COUNTER_SIZE);          // Seq. Counter
    set_bits(pkt.data, &bit_pos, 0x1FFFF, CONFIG_RTC_SIZE + CONFIG_GNSS_SIZE + CONFIG_TEMP_SIZE + CONFIG_ALT_SIZE); // Combined experiment data
    set_bits(pkt.data, &bit_pos, 0xABCD, CONFIG_CRC_SIZE);      // CRC

    return pkt;
}

Packet generate_BF_packet() {
    size_t total_bits = CONFIG_ID_SIZE + CONFIG_SEQ_COUNTER_SIZE + CONFIG_RTC_SIZE + CONFIG_BITFLIP_SIZE + CONFIG_CRC_SIZE;
    size_t total_bytes = CONFIG_BITFLIP_PACKET_SIZE;
    Packet pkt = { calloc(total_bytes, 1), total_bits };

    size_t bit_pos = 0;
    set_bits(pkt.data, &bit_pos, 2, CONFIG_ID_SIZE);            // ID
    set_bits(pkt.data, &bit_pos, 99, CONFIG_SEQ_COUNTER_SIZE);          // Seq. Counter
    set_bits(pkt.data, &bit_pos, 0xABCDE, CONFIG_RTC_SIZE + CONFIG_BITFLIP_SIZE); // Combined experiment data
    set_bits(pkt.data, &bit_pos, 0x1234, CONFIG_CRC_SIZE);      // CRC

    return pkt;
}

Packet generate_RAD_packet() {
    size_t total_bits = CONFIG_ID_SIZE + CONFIG_SEQ_COUNTER_SIZE + CONFIG_RTC_SIZE + CONFIG_RADIATION_SIZE + CONFIG_CRC_SIZE;
    size_t total_bytes = CONFIG_RADIATION_PACKET_SIZE;
    Packet pkt = { calloc(total_bytes, 1), total_bits };

    size_t bit_pos = 0;
    set_bits(pkt.data, &bit_pos, 3, CONFIG_ID_SIZE);            // ID
    set_bits(pkt.data, &bit_pos, 7, CONFIG_SEQ_COUNTER_SIZE);           // Seq. Counter
    set_bits(pkt.data, &bit_pos, 0xAAAA, CONFIG_RTC_SIZE + CONFIG_RADIATION_SIZE); // Combined experiment data
    set_bits(pkt.data, &bit_pos, 0xFFFF, CONFIG_CRC_SIZE);      // CRC

    return pkt;
}

void free_packet(Packet *pkt) {
    free(pkt->data);
    pkt->data = NULL;
}

int main() {
    Packet hk = generate_HK_packet();
    printf("Housekeeping Packet:\n");
    print_packet_binary(&hk);
    print_packet_hex(&hk);
    free_packet(&hk);

    Packet bf = generate_BF_packet();
    printf("\nBit Flip Packet:\n");
    print_packet_binary(&bf);
    print_packet_hex(&bf);
    free_packet(&bf);

    Packet test = { calloc(2, 8), 14 };
    uint8_t test_data[2] = { 0b10101010, 0b01010101 }; // Example data
    size_t bit_pos = 0;
    set_bits_2(test.data, &bit_pos, test_data, 14);
    printf("\nTest Packet with data %02x %02x:\n", test_data[0], test_data[1]);
    print_packet_binary(&test);
    print_packet_hex(&test);
    free_packet(&test);

    
    return 0;
}
*/