"""
Utility functions for the GLITCH ground station.
Contains general-purpose functions used across multiple modules.
"""

def calc_crc(data_bytes: bytes, data_bits: int) -> int:
    """Calculate CRC-16 checksum for packet validation"""
    crc = 0xFFFF
    pol = 0x1021
    
    for i in range(data_bits):
        byte_index = i // 8
        bit_index = 7 - (i % 8)
        
        if byte_index < len(data_bytes):
            bit = (data_bytes[byte_index] >> bit_index) & 1
            crc ^= (bit << 15)
            
            if crc & 0x8000:
                crc = ((crc << 1) ^ pol) & 0xFFFF
            else:
                crc = (crc << 1) & 0xFFFF
    
    return crc

def convert_temp(raw32):
    """Convert raw temperature reading to Celsius"""
    raw16 = raw32 & 0xFFFF
    return (175.72 * raw16 / 65536.0) - 46.85

def calculate_packet_bits(fields):
    """Calculate total packet bits from field definitions"""
    total_bits = 2  # Start with 2 bits for packet ID
    
    for field in fields:
        field_format = field[1]  # e.g., "uint:16", "int:48"
        # Extract the number after the colon
        bits = int(field_format.split(':')[1])
        total_bits += bits
    
    return total_bits

# Add other utility functions as they're identified
def bytes_to_hex_string(data: bytes) -> str:
    """Convert bytes to hex string for debugging"""
    return ' '.join(f'{b:02x}' for b in data)

def validate_packet_length(data: bytes, expected_bits: int) -> bool:
    """Validate if packet data matches expected length"""
    expected_bytes = (expected_bits + 7) // 8
    return len(data) == expected_bytes