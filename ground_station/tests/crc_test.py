import sys
import os
import time
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from receiver.packet_parser import parse

packet_bin = "00111111 11111111 11111111 11111111 11100010 01000110 10001010 11001111 00010000 11101100 10101000 01100100 00110101 01111001 10111101 11100010 01011111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11101000 01001101 10000000"

def display_packet(packet):
    """Display packet contents in a formatted way"""
    print(f"  Packet Type: {type(packet).__name__}")
    
    for field_name, field_value in packet.__dict__.items():
        if isinstance(field_value, float):
            print(f"    {field_name}: {field_value:.2f}")
        elif isinstance(field_value, int):
            if field_name == 'crc':
                print(f"    {field_name}: 0x{field_value:04X}")
            elif field_name in ['gnss', 'bit_flip', 'radiation'] and field_value > 1000:
                print(f"    {field_name}: 0x{field_value:X}")
            else:
                print(f"    {field_name}: {field_value}")
        else:
            print(f"    {field_name}: {field_value}")

def test_parse_packet():
    """Testing packet_parsing function"""
    # Remove spaces and validate length
    bin_values = packet_bin.replace(" ", "")
    if len(bin_values) % 8 != 0:
        print("Binary string length must be a multiple of 8")
        return

    # Convert binary string to bytes
    data = int(bin_values, 2).to_bytes(len(bin_values) // 8, 'big')
    
    print(f"Testing packet with {len(data)} bytes ({len(data)*8} bits)")
    print(f"Packet binary: {bin_values}")
    
    t = time.process_time()
    parsed = parse(data)
    elapsed_time = time.process_time() - t
    print(f"Packet parsing completed in {elapsed_time * 1000:.8f} ms")
    
    if parsed:
        print("Packet parsed successfully:")
        display_packet(parsed)
    else:
        print("Failed to parse packet")

if __name__ == "__main__":
    test_parse_packet()