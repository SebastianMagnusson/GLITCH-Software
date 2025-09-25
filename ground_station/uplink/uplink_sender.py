from bitstring import BitArray
from utils import calc_crc

def build_telecommand(seq, tc_code):
    packet = BitArray()
    packet.append(f"uint:16={seq}")    # 16 bits
    packet.append(f"uint:8={tc_code}") # 8 bits
    packet.append(f"uint:16=0")        # 16 bits placeholder for CRC
    
    current_length = len(packet)
    padding_needed = (8 - (current_length % 8)) % 8
    
    if padding_needed > 0:
        packet.append(f"uint:{padding_needed}=0")  # Pad with zeros
        print(f"Padded {padding_needed} bits to make packet {len(packet)} bits total")
    
    # Calculate CRC for all data except the last 2 bytes
    packet_bytes = bytearray(packet.bytes)
    data_bits = (len(packet_bytes) - 2) * 8  # Calculate data bits (excluding CRC bytes)
    crc = calc_crc(packet_bytes[:-2], data_bits)
    print(f"Calculated CRC: {crc:04X}")

    # TODO: Verify CRC calculation
    packet_bytes[-2] = (crc >> 8) & 0xFF  # High byte
    packet_bytes[-1] = crc & 0xFF         # Low byte

    
    
    return bytes(packet_bytes)

def send_telecommand(telemetry_manager, seq, tc_code):
    """Send telecommand using the existing TCP connection"""
    if not telemetry_manager:
        print("No telemetry manager provided")
        return "No telemetry manager available"
        
    if not hasattr(telemetry_manager, 'uplink_socket') or not telemetry_manager.uplink_socket:
        print("No connection to MCU available")
        return "No connection to MCU available"

    try:
        packet = build_telecommand(seq, tc_code)
        telemetry_manager.uplink_socket.send(packet)
        print(f"Sent TC code {tc_code} (seq: {seq}) via TCP connection - {len(packet)} bytes")
        return f"Sent TC code {tc_code} (seq: {seq}) successfully"
    except Exception as e:
        print(f"Failed to send telecommand: {e}")
        telemetry_manager.uplink_socket = None
        return f"Failed to send telecommand: {e}"