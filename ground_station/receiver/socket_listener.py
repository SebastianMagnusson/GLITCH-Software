import socket
from receiver.packet_parser import parse_packet
from storage.logger import Logger

def dl_pkts(ip="0.0.0.0", port=5005, telemetry_manager=None):
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind((ip, port))
    print(f"Listening on {ip}:{port}...")
    logger = Logger()

    while True:
        data, addr = sock.recvfrom(4096)
        parsed = parse_packet(data)
        if parsed:
            print(f"Received packet from {addr}: {parsed}")
            logger.log(parsed)
            
            if telemetry_manager:
                telemetry_manager.update(parsed)
        else:
            print(f"Received unknown packet from {addr}")