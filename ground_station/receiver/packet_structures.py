from receiver.packet_types import PacketType, HousekeepingPacket, BitFlipPacket, AckPacket, RadiationPacket

# Schema registry: maps packet type to (parser_class, size_in_bits)
PACKET_PARSERS = {
    PacketType.HK: (HousekeepingPacket, 250),   # 16+17+32+32+32+55+48+16 + 2 for ID
    PacketType.BF: (BitFlipPacket, 223),        # 16+17+172+16 + 2 for ID
    PacketType.ACK: (AckPacket, 54),            # 16+17+3+16 + 2 for ID
    PacketType.RAD: (RadiationPacket, 10035),   # 16+17+9984+16 + 2 for ID
}

# Auto-generate packet structures for backward compatibility
PACKET_STRUCTURES = {}
for pkt_type, (parser_class, total_bits) in PACKET_PARSERS.items():
    PACKET_STRUCTURES[pkt_type] = {
        "bits": total_bits,
        "name": pkt_type.name
    }