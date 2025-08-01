void set_bits(uint8_t *buf, size_t *bit_pos, uint32_t data, int bits);
void set_bits_data(uint8_t *buf, size_t *bit_pos, const uint8_t *data, int bits);

uint8_t* generate_HK_packet();
uint8_t* generate_HK_data();
uint8_t* generate_BF_packet();
uint8_t* generate_BF_data();
uint8_t* generate_RAD_packet();
uint8_t* generate_RAD_data();
uint8_t* generate_ACK_packet();
uint8_t* generate_ACK_data();
