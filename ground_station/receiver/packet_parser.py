from bitstring import BitStream
from typing import Union, Optional
from utils import calc_crc
from receiver.packet_structures import PACKET_PARSERS
from receiver.packet_types import PacketType, HousekeepingPacket, BitFlipPacket, AckPacket, RadiationPacket

PacketUnion = Union[HousekeepingPacket, BitFlipPacket, AckPacket, RadiationPacket]

def validate_and_parse(data: bytes) -> Optional[PacketUnion]:
    """Validate CRC and parse packet"""
    # Find matching packet by length
    for pkt_type, (parser_class, expected_bits) in PACKET_PARSERS.items():
        expected_bytes = ((expected_bits + 7) // 8)
        if len(data) == expected_bytes:
            try:
                # Check CRC
                data_bits = expected_bits - 16
                crc = calc_crc(data, data_bits)
                
                bits = BitStream(bytes=data)
                recv_crc = bits[expected_bits - 16:expected_bits].uint
                
                if crc == recv_crc:
                    # Check packet ID
                    pkt_id_data = bits[:2].uint
                    if pkt_id_data == pkt_type:
                        bits.pos = 2  # Skip packet ID
                        return parser_class.from_bitstream(bits)
                        
            except Exception as e:
                print(f"CRC error for {pkt_type.name}: {e}")
                break
    
    return None

def parse_packet(packet_type_id: int, payload: bytes) -> Optional[PacketUnion]:
    """Parse packet by type ID and payload"""
    try:
        packet_type = PacketType(packet_type_id)
        parser_class, expected_bits = PACKET_PARSERS[packet_type]
        expected_bytes = ((expected_bits + 7) // 8)
        
        if len(payload) != expected_bytes:
            raise ValueError(f"Incorrect payload size: expected {expected_bytes}, got {len(payload)}")
        
        bits = BitStream(bytes=payload)
        bits.pos = 2  # Skip packet ID
        return parser_class.from_bitstream(bits)
        
    except (KeyError, ValueError) as e:
        print(f"Parse error: {e}")
        return None

def parse(data: bytes) -> Optional[PacketUnion]:
    """Main parsing function"""
    try:
        return validate_and_parse(data)
    except Exception as e:
        print(f"Parse error: {e}")
        return None