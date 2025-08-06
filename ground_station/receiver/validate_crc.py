def calculate_crc_bits(data_bytes: bytes, data_bits: int) -> int:
    crc = 0xFFFF
    polynomial = 0x1021
    
    for i in range(data_bits):
        byte_index = i // 8
        bit_index = 7 - (i % 8)
        
        if byte_index < len(data_bytes):
            bit = (data_bytes[byte_index] >> bit_index) & 1
            crc ^= (bit << 15)
            
            if crc & 0x8000:
                crc = ((crc << 1) ^ polynomial) & 0xFFFF
            else:
                crc = (crc << 1) & 0xFFFF
    
    return crc