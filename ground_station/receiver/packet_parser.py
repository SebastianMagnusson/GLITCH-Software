from bitstring import BitStream
import receiver.packet_types as packet_types
from receiver.validate_crc import calculate_crc_bits
import receiver.packet_lengths as packet_lengths

def convert_temp(raw32):
    """Convert raw temperature reading to Celsius"""
    raw16 = raw32 & 0xFFFF
    return (175.72 * raw16 / 65536.0) - 46.85

# Define packet structures
PACKET_STRUCTURES = {
    packet_types.PACKET_TYPE_HK: {"bits": 250, "name": "HK"},
    packet_types.PACKET_TYPE_BF: {"bits": 223, "name": "BF"}, 
    packet_types.PACKET_TYPE_ACK: {"bits": 54, "name": "ACK"},
    packet_types.PACKET_TYPE_RAD: {"bits": 10035, "name": "RAD"}
}

# Define parsing configurations
PACKET_PARSERS = {
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

def validate_crc(data):
    """Validate CRC for all known packet types and return the valid packet ID"""
    for packet_id, structure in PACKET_STRUCTURES.items():
        total_packet_bits = structure["bits"]
        expected_bytes = ((total_packet_bits + 7) // 8)
        
        if len(data) != expected_bytes:
            continue
            
        try:
            # Calculate CRC for data
            data_bits = total_packet_bits - 16 # Exclude CRC bits
            calculated_crc = calculate_crc_bits(data, data_bits)
            
            # Get received CRC from packet
            bits = BitStream(bytes=data)
            received_crc = bits[total_packet_bits - 16:total_packet_bits].uint
            
            if calculated_crc == received_crc:
                # Check if packet ID matches
                packet_id_from_data = bits[:2].uint
                if packet_id_from_data == packet_id:
                    return True, packet_id
                    
        except Exception as e:
            print(f"CRC validation error for {structure['name']}: {e}")
            continue
    
    return False, None

def parse_packet(bits, packet_type):
    """Generic packet parser"""
    if packet_type not in PACKET_PARSERS:
        raise ValueError(f"Unknown packet type: {packet_type}")
    
    config = PACKET_PARSERS[packet_type]
    result = {"type": PACKET_STRUCTURES[packet_type]["name"]}
    
    for field_config in config["fields"]:
        field_name = field_config[0]
        field_format = field_config[1]
        transform_func = field_config[2] if len(field_config) > 2 else None
        
        value = bits.read(field_format)
        if transform_func:
            value = transform_func(value)
        
        result[field_name] = value
    
    return result

def parse(data):
    """Main packet parsing function"""
    try:
        # Validate CRC and get packet type - this does ALL validation
        crc_valid, validated_packet_id = validate_crc(data)
        if not crc_valid:
            print("CRC validation failed for all known packet structures")
            return None
        
        # Create BitStream and skip packet ID (already validated)
        bits = BitStream(bytes=data)
        bits.read("uint:2")  # Skip packet ID - already validated
        
        # Parse the packet using the validated type
        return parse_packet(bits, validated_packet_id)
            
    except Exception as e:
        print(f"Error parsing packet: {e}")
        return None


