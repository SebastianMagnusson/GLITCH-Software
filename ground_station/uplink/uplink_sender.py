import socket
from bitstring import BitArray

def build_telecommand(seq, tc_code, rtc, crc=0x1F):  # TODO: real crc
    packet = BitArray()
    packet.append(f"uint:16={seq}")    # 16 bits
    packet.append(f"uint:3={tc_code}") # 3 bits  
    packet.append(f"uint:17={rtc}")    # 17 bits
    packet.append(f"uint:16={crc}")    # 16 bits

    current_length = len(packet)
    padding_needed = (8 - (current_length % 8)) % 8
    
    if padding_needed > 0:
        packet.append(f"uint:{padding_needed}=0")  # Pad with zeros
        print(f"Padded {padding_needed} bits to make packet {len(packet)} bits total")
    
    return packet.bytes

def send_telecommand(telemetry_manager, seq, tc_code, rtc):
    """Send telecommand using the existing TCP connection"""
    if not telemetry_manager:
        print("No telemetry manager provided")
        return False
        
    if not hasattr(telemetry_manager, 'uplink_socket') or not telemetry_manager.uplink_socket:
        print("No connection to MCU available")
        return False
    
    try:
        packet = build_telecommand(seq, tc_code, rtc)
        telemetry_manager.uplink_socket.send(packet)
        print(f"Sent TC code {tc_code} (seq: {seq}) via TCP connection - {len(packet)} bytes")
        return True
    except Exception as e:
        print(f"Failed to send telecommand: {e}")
        telemetry_manager.uplink_socket = None
        return False