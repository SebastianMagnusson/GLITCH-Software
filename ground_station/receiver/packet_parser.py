from bitstring import BitStream
from utils import calc_crc
from receiver.packet_structures import PACKET_STRUCTURES, PACKET_PARSERS

def validate_and_parse(data):
    """Validate CRC and parse packet"""
    # Find matching packet by length
    for pkt_id, struct in PACKET_STRUCTURES.items():
        expected_bytes = ((struct["bits"] + 7) // 8)
        if len(data) == expected_bytes:
            try:
                # Check CRC
                data_bits = struct["bits"] - 16
                crc = calc_crc(data, data_bits)
                
                bits = BitStream(bytes=data)
                recv_crc = bits[struct["bits"] - 16:struct["bits"]].uint
                
                if crc == recv_crc:
                    # Check packet ID
                    pkt_id_data = bits[:2].uint
                    if pkt_id_data == pkt_id:
                        bits.pos = 2
                        return parse_fields(bits, pkt_id)
                        
            except Exception as e:
                print(f"CRC error for {struct['name']}: {e}")
                break
    
    return None

def parse_fields(bits, pkt_type):
    """Parse packet fields"""
    if pkt_type not in PACKET_PARSERS:
        raise ValueError(f"Unknown packet type: {pkt_type}")

    config = PACKET_PARSERS[pkt_type]
    result = {"type": PACKET_STRUCTURES[pkt_type]["name"]}

    # Parse all fields except CRC
    for field in config["fields"][:-1]:
        name = field[0]
        fmt = field[1]
        transform = field[2] if len(field) > 2 else None
        
        value = bits.read(fmt)
        if transform:
            value = transform(value)
        
        result[name] = value
    
    return result

def parse(data):
    """Main parsing function"""
    try:
        return validate_and_parse(data)
    except Exception as e:
        print(f"Parse error: {e}")
        return None


