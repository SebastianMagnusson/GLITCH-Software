import socket
import threading
import time
from receiver.packet_parser import parse_packet
from storage.logger import Logger

def dl_pkts(mcu_ip="192.168.1.10", port=5005, telemetry_manager=None):
    sock = None
    logger = Logger()
    
    while True:
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(10)
            sock.connect((mcu_ip, port))
            print(f"Connected to MCU at {mcu_ip}:{port}")
            
            if telemetry_manager:
                telemetry_manager.uplink_socket = sock
            
            while True:
                data = sock.recv(4096)
                if not data:
                    print("Connection closed by MCU")
                    break
                    
                parsed = parse_packet(data)
                if parsed:
                    print(f"Received packet: {parsed}")
                    logger.log(parsed)
                    
                    if telemetry_manager:
                        telemetry_manager.update(parsed)
                else:
                    print(f"Received unknown packet")
                    
        except Exception as e:
            print(f"Connection error: {e} - retrying in 5 seconds...")
            if sock:
                sock.close()
            time.sleep(5)