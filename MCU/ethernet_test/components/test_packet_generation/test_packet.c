#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

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

Packet generate_HK_packet() {
    size_t total_bits = 2 + 10 + 17 + 33*3 + 55 + 24 + 16;
    size_t total_bytes = (total_bits + 7) / 8;
    Packet pkt = { calloc(total_bytes, 1), total_bits };

    size_t bit_pos = 0;
    set_bits(pkt.data, &bit_pos, 2, 2);            // ID
    set_bits(pkt.data, &bit_pos, 42, 10);          // Seq. Counter
    set_bits(pkt.data, &bit_pos, 0x1FFFF, 17+33*3+55+24); // Combined experiment data
    set_bits(pkt.data, &bit_pos, 0xABCD, 16);      // CRC

    return pkt;
}

Packet generate_BF_packet() {
    size_t total_bits = 2 + 10 + 17 + 172 + 16;
    size_t total_bytes = (total_bits + 7) / 8;
    Packet pkt = { calloc(total_bytes, 1), total_bits };

    size_t bit_pos = 0;
    set_bits(pkt.data, &bit_pos, 2, 2);            // ID
    set_bits(pkt.data, &bit_pos, 99, 10);          // Seq. Counter
    set_bits(pkt.data, &bit_pos, 0xABCDE, 17+172); // Combined experiment data
    set_bits(pkt.data, &bit_pos, 0x1234, 16);      // CRC

    return pkt;
}

Packet generate_RAD_packet() {
    size_t total_bits = 2 + 10 + 17 + 19200 + 32;
    size_t total_bytes = (total_bits + 7) / 8;
    Packet pkt = { calloc(total_bytes, 1), total_bits };

    size_t bit_pos = 0;
    set_bits(pkt.data, &bit_pos, 3, 2);            // ID
    set_bits(pkt.data, &bit_pos, 7, 10);           // Seq. Counter
    set_bits(pkt.data, &bit_pos, 0xAAAA, 17+19200); // Combined experiment data
    set_bits(pkt.data, &bit_pos, 0xFFFF, 32);      // CRC

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

    /*
    Packet rad = generate_RAD_packet();
    printf("\nRadiation Data Packet:\n");
    print_packet_binary(&rad);
    print_packet_hex(&rad);
    free_packet(&rad);
    */

    return 0;
}
