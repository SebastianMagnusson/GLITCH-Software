from bitstring import BitStream
import receiver.packet_types as packet_types
from receiver.validate_crc import calculate_crc

def validate_crc_robust(data):
    """Try to validate CRC against all known packet structures"""
    
    packet_structures = {
        0: 2 + 16 + 17 + 32 + 32 + 32 + 55 + 24,  # HK: 210 bits
        1: 2 + 16 + 17 + 172,                      # BF: 207 bits  
        2: 2 + 16 + 17 + 3,                        # ACK: 38 bits
        3: 2 + 16 + 17 + 9984                      # RAD: 10019 bits
    }
    
    bits = BitStream(bytes=data)
    
    # Try each possible packet structure
    for packet_id, data_bits in packet_structures.items():
        try:
            # Check if packet is long enough
            if len(bits) < data_bits + 16:
                continue
                
            # Extract data portion and CRC
            data_portion = bits[:data_bits]
            crc_portion = bits[data_bits:data_bits + 16]
            
            calculated_crc = calculate_crc(data_portion.bytes)
            received_crc = crc_portion.uint
            
            if calculated_crc == received_crc:
                # Verify the packet ID matches
                packet_id_from_data = bits[:2].uint
                if packet_id_from_data == packet_id:
                    return True, packet_id
                    
        except Exception:
            continue
    
    return False, None

def parse_packet(data):
    try:
        bits = BitStream(bytes=data)
        print(bits)

        crc_valid, expected_packet_id = validate_crc_robust(data)
        if not crc_valid:
            print("CRC validation failed for all known packet structures")
            return None
        
        packet_id = bits.read("uint:2")
        
        if expected_packet_id is not None and packet_id != expected_packet_id:
            print(f"Packet ID mismatch: header says {packet_id}, CRC validates for {expected_packet_id}")
            return None

        if packet_id == packet_types.PACKET_TYPE_HK:
            return parse_hk(bits)
        elif packet_id == packet_types.PACKET_TYPE_BF:
            return parse_bf(bits)
        elif packet_id == packet_types.PACKET_TYPE_ACK:
            return parse_ack(bits)
        elif packet_id == packet_types.PACKET_TYPE_RAD:
            return parse_rad(bits)
        else:
            print(f"Unknown packet type: {packet_id}")
            return None
            
    except Exception as e:
        print(f"Error parsing packet: {e}")
        print(f"Packet length: {len(data)} bytes ({len(data) * 8} bits)")
        return None

def parse_hk(bits):
    return {
        "type": "HK",
        "seq_counter": bits.read("uint:16"),
        "rtc": bits.read("uint:17"),
        "internal": convert_temp(bits.read("uint:32")),
        "external": convert_temp(bits.read("uint:32")),
        "sensor_board": convert_temp(bits.read("uint:32")),
        "gnss": bits.read("uint:55"),
        "altitude": bits.read("int:24"),
        "crc": bits.read("uint:16")  
    }

def parse_bf(bits):
    return {
        "type": "BF",
        "seq_counter": bits.read("uint:16"),
        "rtc": bits.read("uint:17"),
        "bit_flip": bits.read("uint:172"),
        "crc": bits.read("uint:16")  
    }

def parse_ack(bits):
    return {
        "type": "ACK",
        "seq_counter": bits.read("uint:16"),
        "rtc": bits.read("uint:17"),
        "telecommand_ack": bits.read("uint:3"),
        "crc": bits.read("uint:16")
    }

def parse_rad(bits):
    return {
        "type": "RAD",
        "seq_counter": bits.read("uint:16"),
        "rtc": bits.read("uint:17"),
        "radiation": bits.read("uint:9984"),
        "crc": bits.read("uint:16")
    }

def convert_temp(raw32):
    raw16 = raw32 & 0xFFFF
    return (175.72 * raw16 / 65536.0) - 46.85
