#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "packet_generation.h"
#include "sdkconfig.h"

// Helper function to set bits into the buffer
void set_bits(uint8_t *buf, size_t *bit_pos, uint32_t data, int bits) {
    for (int i = bits - 1; i >= 0; i--) {
        int byte_index = (*bit_pos) / 8;
        int bit_index = 7 - ((*bit_pos) % 8);
        buf[byte_index] |= ((data >> i) & 1) << bit_index;
        (*bit_pos)++;
    }
}

// Helper function to set bits from a byte array into the buffer
void set_bits_data(uint8_t* buf, size_t* bit_pos, const uint8_t* data, int bits) {
    for (int i = bits - 1; i >= 0; i--) {
        int byte_index = (*bit_pos) / 8;
        int bit_index = 7 - ((*bit_pos) % 8);
        buf[byte_index] |= ((data[(i+2) / 8] >> ((i+2) % 8)) & 1) << bit_index;
        (*bit_pos)++;
    }
}

// Print packet in binary
void print_packet_binary(const uint8_t *data, size_t length) {
    printf("Packet (%zu bits):\n", length * 8);
    for (size_t i = 0; i < length; i++) {
        for (int b = 7; b >= 0; b--) {
            printf("%d", (data[i] >> b) & 1);
        }
        printf(" ");
    }
    printf("\n");
}

// Print packet in hexadecimal
void print_packet_hex(const uint8_t *data, size_t length) {
    printf("Packet (%zu bits):\n", length * 8);
    for (size_t i = 0; i < length; i++) {
        printf("%02X ", data[i]);
    }
    printf("\n");
}

uint8_t* generate_HK_packet() {
    uint8_t *packet = calloc(CONFIG_HOUSEKEEPING_PACKET_SIZE, sizeof(uint8_t));

    size_t bit_pos = 0;
    set_bits(packet, &bit_pos, CONFIG_HOUSEKEEPING_PACKET_ID, CONFIG_ID_SIZE);            // ID
    set_bits(packet, &bit_pos, 42, CONFIG_SEQ_COUNTER_SIZE);          // Seq. Counter
    set_bits(packet, &bit_pos, 0x1FFFF, CONFIG_HOUSEKEEPING_DATA_SIZE); // Combined experiment data
    set_bits(packet, &bit_pos, 0xABCD, CONFIG_CRC_SIZE);      // CRC

    return packet;
}

uint8_t* generate_HK_data() {
    uint8_t *data = calloc(CONFIG_HOUSEKEEPING_DATA_SIZE, sizeof(uint8_t));
    size_t bit_pos = 0;
    set_bits(data, &bit_pos, CONFIG_HOUSEKEEPING_PACKET_ID, CONFIG_ID_SIZE); // ID
    set_bits(data, &bit_pos, 0x1FFFF, CONFIG_HOUSEKEEPING_DATA_SIZE); // Combined experiment data
    return data;
}

uint8_t* generate_BF_packet() {
    uint8_t *packet = calloc(CONFIG_BITFLIP_PACKET_SIZE, sizeof(uint8_t));

    size_t bit_pos = 0;
    set_bits(packet, &bit_pos, CONFIG_BITFLIP_PACKET_ID, CONFIG_ID_SIZE);            // ID
    set_bits(packet, &bit_pos, 99, CONFIG_SEQ_COUNTER_SIZE);          // Seq. Counter
    set_bits(packet, &bit_pos, 0xABCDE, CONFIG_BITFLIP_DATA_SIZE); // Combined experiment data
    set_bits(packet, &bit_pos, 0x1234, CONFIG_CRC_SIZE);      // CRC

    return packet;
}

uint8_t* generate_BF_data() {
    uint8_t *data = calloc(CONFIG_BITFLIP_DATA_SIZE, sizeof(uint8_t));
    size_t bit_pos = 0;
    set_bits(data, &bit_pos, CONFIG_BITFLIP_PACKET_ID, CONFIG_ID_SIZE); // ID
    set_bits(data, &bit_pos, 0xABCDE, CONFIG_BITFLIP_DATA_SIZE); // Combined experiment data
    return data;
}

uint8_t* generate_RAD_packet() {
    uint8_t *packet = calloc(CONFIG_RADIATION_PACKET_SIZE, sizeof(uint8_t));

    size_t bit_pos = 0;
    set_bits(packet, &bit_pos, CONFIG_RADIATION_PACKET_ID, CONFIG_ID_SIZE);            // ID
    set_bits(packet, &bit_pos, 7, CONFIG_SEQ_COUNTER_SIZE);           // Seq. Counter
    set_bits(packet, &bit_pos, 0xAAAA, CONFIG_RADIATION_DATA_SIZE); // Combined experiment data
    set_bits(packet, &bit_pos, 0xFFFF, CONFIG_CRC_SIZE);      // CRC

    return packet;
}

uint8_t* generate_RAD_data() {
    uint8_t *data = calloc(CONFIG_RADIATION_DATA_SIZE, sizeof(uint8_t));
    size_t bit_pos = 0;
    set_bits(data, &bit_pos, CONFIG_RADIATION_PACKET_ID, CONFIG_ID_SIZE); // ID
    set_bits(data, &bit_pos, 0xAAAA, CONFIG_RADIATION_DATA_SIZE); // Combined experiment data
    return data;
}

uint8_t* generate_ACK_packet() {
    uint8_t *packet = calloc(CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE, sizeof(uint8_t));

    size_t bit_pos = 0;
    set_bits(packet, &bit_pos, CONFIG_ACKNOWLEDGEMENT_PACKET_ID, CONFIG_ID_SIZE);            // ID
    set_bits(packet, &bit_pos, 1, CONFIG_SEQ_COUNTER_SIZE);           // Seq. Counter
    set_bits(packet, &bit_pos, 0x01, CONFIG_ACKNOWLEDGEMENT_DATA_SIZE); // Telecommand ACK
    set_bits(packet, &bit_pos, 0x1234, CONFIG_CRC_SIZE);      // CRC

    return packet;
}

uint8_t* generate_ACK_data() {
    uint8_t *data = calloc(CONFIG_ACKNOWLEDGEMENT_DATA_SIZE, sizeof(uint8_t));
    size_t bit_pos = 0;
    set_bits(data, &bit_pos, CONFIG_ACKNOWLEDGEMENT_PACKET_ID, CONFIG_ID_SIZE); // ID
    set_bits(data, &bit_pos, 0x01, CONFIG_ACKNOWLEDGEMENT_DATA_SIZE); // Telecommand ACK
    return data;
}



int main() {
    uint8_t *hk = generate_HK_packet();
    printf("Housekeeping Packet:\n");
    print_packet_binary(hk, CONFIG_HOUSEKEEPING_PACKET_SIZE);
    print_packet_hex(hk, CONFIG_HOUSEKEEPING_PACKET_SIZE);
    free(hk);

    uint8_t *hk_data = generate_HK_data();
    printf("\nHousekeeping Data:\n");
    print_packet_binary(hk_data, CONFIG_HOUSEKEEPING_DATA_SIZE);
    print_packet_hex(hk_data, CONFIG_HOUSEKEEPING_DATA_SIZE);
    free(hk_data);

    uint8_t *bf = generate_BF_packet();
    printf("\nBit Flip Packet:\n");
    print_packet_binary(bf, CONFIG_BITFLIP_PACKET_SIZE);
    print_packet_hex(bf, CONFIG_BITFLIP_PACKET_SIZE);
    free(bf);

    uint8_t *bf_data = generate_BF_data();
    printf("\nBit Flip Data:\n");
    print_packet_binary(bf_data, CONFIG_BITFLIP_DATA_SIZE);
    print_packet_hex(bf_data, CONFIG_BITFLIP_DATA_SIZE);
    free(bf_data);

    uint8_t *ack = generate_ACK_packet();
    printf("\nAcknowledgement Packet:\n");
    print_packet_binary(ack, CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE);
    print_packet_hex(ack, CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE);
    free(ack);

    uint8_t *ack_data = generate_ACK_data();
    printf("\nAcknowledgement Data:\n");
    print_packet_binary(ack_data, CONFIG_ACKNOWLEDGEMENT_DATA_SIZE);
    print_packet_hex(ack_data, CONFIG_ACKNOWLEDGEMENT_DATA_SIZE);
    free(ack_data);

    uint8_t *test = calloc(2, sizeof(uint8_t));
    uint8_t test_data[2] = { 0b10101010, 0b01010101 }; // Example data
    size_t bit_pos = 0;
    set_bits_data(test, &bit_pos, test_data, 14);
    printf("\nTest Packet with data %02x %02x:\n", test_data[0], test_data[1]);
    print_packet_binary(test, 2);
    print_packet_hex(test, 2);
    free(test);

    uint8_t *test_data_packet = calloc(6, sizeof(uint8_t));
    size_t test_bit_pos = 0;
    set_bits(test_data_packet, &test_bit_pos, 1, 2); // Example ID
    set_bits(test_data_packet, &test_bit_pos, 0xFFFF, 16); // Example data
    set_bits_data(test_data_packet, &test_bit_pos, test_data, 14); // Example data
    set_bits(test_data_packet, &test_bit_pos, 0xFFFF, 16); // Example CRC
    printf("\nTest Data Packet:\n");
    print_packet_binary(test_data_packet, 6);
    print_packet_hex(test_data_packet, 6);
    free(test_data_packet);

    /*
    Packet rad = generate_RAD_packet();
    printf("\nRadiation Data Packet:\n");
    print_packet_binary(&rad);
    print_packet_hex(&rad);
    free_packet(&rad);
    */

    return 0;
}
