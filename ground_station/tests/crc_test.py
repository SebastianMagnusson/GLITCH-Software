import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from receiver.packet_parser import parse

packet_bin = "11000000 00000000 01111111 11111111 11111101 11101011 11000000"

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
    
    parsed = parse(data)
    if parsed:
        print("Packet parsed successfully:")
        for key, value in parsed.items():
            print(f"  {key}: {value}")
    else:
        print("Failed to parse packet")

if __name__ == "__main__":
    test_parse_packet()