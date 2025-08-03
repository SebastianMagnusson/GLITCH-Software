from bitstring import BitStream
import receiver.packet_types as packet_types

def parse_packet(data):
    bits = BitStream(bytes=data)
    packet_id = bits.read("uint:2")

    if packet_id == packet_types.PACKET_TYPE_HK:
        return parse_hk(bits)
    elif packet_id == packet_types.PACKET_TYPE_BF:
        return parse_bf(bits)
    elif packet_id == packet_types.PACKET_TYPE_ACK:
        return parse_ack(bits)
    else:
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
        "radiation": bits.read("uint:1"),
        "crc": bits.read("uint:16")
    }
def parse_bf(bits):
    return {
        "type": "BF",
        "seq_counter": bits.read("uint:16"),
        "rtc": bits.read("uint:17"),
        "bit_flip": bits.read("uint:172"),
        "crc": bits.read("int:16")
    }

def parse_ack(bits):
    return {
        "type": "ACK",
        "seq_counter": bits.read("uint:16"),
        "rtc": bits.read("uint:17"),
        "telecommand_ack": bits.read("uint:3"),
        "crc": bits.read("uint:16")
    }

def convert_temp(raw32):
    raw16 = raw32 & 0xFFFF
    return (175.72 * raw16 / 65536.0) - 46.85
