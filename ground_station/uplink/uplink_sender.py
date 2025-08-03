import socket
from bitstring import BitArray

def build_telecommand(seq, tc_code, rtc, crc=0x1F):  # TODO: real crc
    packet = BitArray()
    packet.append(f"uint:16={seq}")
    packet.append(f"uint:3={tc_code}")
    packet.append(f"uint:17={rtc}")
    packet.append(f"uint:10={crc}")
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
        print(f"Sent TC code {tc_code} (seq: {seq}) via TCP connection")
        return True
    except Exception as e:
        print(f"Failed to send telecommand: {e}")
        telemetry_manager.uplink_socket = None
        return False