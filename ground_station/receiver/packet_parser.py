from bitstring import BitStream
import receiver.packet_types as packet_types
from receiver.calc_crc import calc_crc
import receiver.packet_lengths as packet_lengths

def convert_temp(raw32):
    """Convert raw temperature reading to Celsius"""
    raw16 = raw32 & 0xFFFF
    return (175.72 * raw16 / 65536.0) - 46.85

# Packet definitions
STRUCTURES = {
    packet_types.PACKET_TYPE_HK: {"bits": 250, "name": "HK"},
    packet_types.PACKET_TYPE_BF: {"bits": 223, "name": "BF"}, 
    packet_types.PACKET_TYPE_ACK: {"bits": 54, "name": "ACK"},
    packet_types.PACKET_TYPE_RAD: {"bits": 10035, "name": "RAD"}
}

PARSERS = {
    packet_types.PACKET_TYPE_HK: {
        "fields": [
            ("seq_counter", "uint:16"),
            ("rtc", "uint:17"),
            ("internal", "uint:32", convert_temp),
            ("external", "uint:32", convert_temp),
            ("sensor_board", "uint:32", convert_temp),
            ("gnss", "uint:55"),
            ("altitude", "int:48"),
            ("crc", "uint:16")
        ]
    },
    packet_types.PACKET_TYPE_BF: {
        "fields": [
            ("seq_counter", "uint:16"),
            ("rtc", "uint:17"),
            ("bit_flip", "uint:172"),
            ("crc", "uint:16")
        ]
    },
    packet_types.PACKET_TYPE_ACK: {
        "fields": [
            ("seq_counter", "uint:16"),
            ("rtc", "uint:17"),
            ("telecommand_ack", "uint:3"),
            ("crc", "uint:16")
        ]
    },
    packet_types.PACKET_TYPE_RAD: {
        "fields": [
            ("seq_counter", "uint:16"),
            ("rtc", "uint:17"),
            ("radiation", "uint:9984"),
            ("crc", "uint:16")
        ]
    }
}

def validate_and_parse(data):
    """Validate CRC and parse packet"""
    # Find matching packet by length
    for pkt_id, struct in STRUCTURES.items():
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
    if pkt_type not in PARSERS:
        raise ValueError(f"Unknown packet type: {pkt_type}")
    
    config = PARSERS[pkt_type]
    result = {"type": STRUCTURES[pkt_type]["name"]}
    
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


