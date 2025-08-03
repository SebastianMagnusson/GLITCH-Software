import socket
import threading
import time
import errno
from receiver.packet_parser import parse_packet
from storage.logger import Logger

def dl_pkts(mcu_ip="192.168.4.2", port=8080, telemetry_manager=None):
    sock = None
    logger = Logger()
    
    while True:
        try:
            print(f"Creating socket...")
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(10)
            
            print(f"Binding to 192.168.4.1...")
            sock.bind(('192.168.4.1', 0))
            print(f"Bound to ethernet interface 192.168.4.1")
            
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
                    
        except socket.error as e:
            print(f"Socket error: {e}")
            print(f"Error number: {e.errno}")
            if e.errno == errno.ECONNREFUSED:
                print("Connection refused - MCU TCP server not running")
            elif e.errno == errno.EHOSTUNREACH:
                print("Host unreachable - network routing issue")
            elif e.errno == errno.ETIMEDOUT:
                print("Connection timeout - MCU not responding")
        except Exception as e:
            print(f"General error: {e}")
            
        if sock:
            sock.close()
        print("Retrying in 5 seconds...")
        time.sleep(5)