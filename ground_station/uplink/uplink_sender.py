import socket
from bitstring import BitArray

def build_telecommand(seq, tc_code, rtc, crc=0x1F):  # TODO: real crc
    packet = BitArray()
    packet.append(f"uint:10={seq}")
    packet.append(f"uint:3={tc_code}")
    packet.append(f"uint:17={rtc}")
    packet.append(f"uint:10={crc}")  #placeholder
    return packet.bytes

def send_telecommand(ip, port, seq, tc_code, rtc):
    packet = build_telecommand(seq, tc_code, rtc)
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.sendto(packet, (ip, port))
    print(f"Sent TC code {tc_code} to {ip}:{port}")
