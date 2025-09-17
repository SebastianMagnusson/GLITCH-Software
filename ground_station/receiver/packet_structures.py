from utils import calculate_packet_bits, convert_temp

# Packet type constants (downlink 2-bit IDs)
PACKET_TYPE_HK   = 0b00  # Housekeeping
PACKET_TYPE_BF   = 0b01  # Bit Flip
PACKET_TYPE_RAD  = 0b10  # Radiation
PACKET_TYPE_ACK  = 0b11  # Acknowledgment

# Field parsing configurations
PACKET_PARSERS = {
    PACKET_TYPE_HK: {
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
    PACKET_TYPE_BF: {
        "fields": [
            ("seq_counter", "uint:16"),
            ("rtc", "uint:17"),
            ("bit_flip", "uint:172"),
            ("crc", "uint:16")
        ]
    },
    PACKET_TYPE_ACK: {
        "fields": [
            ("seq_counter", "uint:16"),
            ("rtc", "uint:17"),
            ("telecommand_ack", "uint:3"),
            ("crc", "uint:16")
        ]
    },
    PACKET_TYPE_RAD: {
        "fields": [
            ("seq_counter", "uint:16"),
            ("rtc", "uint:17"),
            ("radiation", "uint:9984"),
            ("crc", "uint:16")
        ]
    }
}

# Auto-generate packet structures with calculated bit lengths
PACKET_STRUCTURES = {}
for pkt_type, parser_config in PACKET_PARSERS.items():
    total_bits = calculate_packet_bits(parser_config["fields"])
    
    # Map packet type to name
    type_names = {
        PACKET_TYPE_HK: "HK",
        PACKET_TYPE_BF: "BF", 
        PACKET_TYPE_ACK: "ACK",
        PACKET_TYPE_RAD: "RAD"
    }
    
    PACKET_STRUCTURES[pkt_type] = {
        "bits": total_bits,
        "name": type_names[pkt_type]
    }