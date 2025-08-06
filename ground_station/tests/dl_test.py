import threading
import socket
import time
import sys
import os
from bitstring import BitArray
import random

# Add the parent directory to the path to import modules
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from main import main as run_main
from utils import calc_crc
import config

#initial temperatures for all sensors
internal_temp = 24559
external_temp = 13743
sensor_board_temp = 26797

def build_hk_pkt(seq_counter):
    packet = BitArray()

    # Packet ID (2 bits) + Sequence Counter (16 bits) 
    packet.append("uint:2=0")                 # HK packet type
    packet.append(f"uint:16={seq_counter}")   # 16-bit sequence counter

    # RTC (17 bits)
    packet.append(f"uint:17={45678 + seq_counter}")

    global internal_temp, external_temp, sensor_board_temp
    random_offset = random.randint(-1, 1)
    internal_temp += random_offset * 100  
    external_temp += random_offset * 100
    sensor_board_temp += random_offset * 100

    # Temperature sensors (32 bits each)
    packet.append(f"uint:32={internal_temp}")  
    packet.append(f"uint:32={external_temp}")  
    packet.append(f"uint:32={sensor_board_temp}")  

    # GNSS (55 bits)
    packet.append(f"uint:55={0x123456789ABCD}")

    # Altitude (48 bits, signed)
    altitude = 100000  
    altitude += random.randint(-100, 100)  
    packet.append(f"int:48={altitude}")

    # Calculate CRC for the packet so far (excluding CRC field)
    # Convert to bytes for CRC calculation
    temp_bytes = packet.tobytes()
    data_bits = len(packet)  # Current packet length in bits
    crc_value = calc_crc(temp_bytes, data_bits)

    # Add CRC (16 bits)
    packet.append(f"uint:16={crc_value}")

    # Pad to byte boundary
    while len(packet) % 8 != 0:
        packet.append("uint:1=0")

    return packet.bytes

def build_bf_pkt(seq_counter):
    packet = BitArray()

    # Packet ID (2 bits) + Sequence Counter (16 bits)
    packet.append("uint:2=1")                 # BF packet type
    packet.append(f"uint:16={seq_counter}")   # 16-bit sequence counter

    # RTC (17 bits)
    packet.append(f"uint:17={45678 + seq_counter}")

    # Bit flip data (172 bits)
    packet.append(f"uint:172={0x123456789ABCDEF0123456789ABCDEF0}")

    # Calculate CRC for the packet so far
    temp_bytes = packet.tobytes()
    data_bits = len(packet)
    crc_value = calc_crc(temp_bytes, data_bits)

    # Add CRC (16 bits)
    packet.append(f"uint:16={crc_value}")

    # Pad to byte boundary
    while len(packet) % 8 != 0:
        packet.append("uint:1=0") 

    return packet.bytes

def build_ack_pkt(seq_counter, tc_ack=1):
    packet = BitArray()

    # Packet ID (2 bits) + Sequence Counter (16 bits)
    packet.append("uint:2=3")                 # ACK packet type
    packet.append(f"uint:16={seq_counter}")   # 16-bit sequence counter

    # RTC (17 bits)
    packet.append(f"uint:17={45678 + seq_counter}")

    # Telecommand ACK (3 bits)
    packet.append(f"uint:3={tc_ack}")

    # Calculate CRC for the packet so far
    temp_bytes = packet.tobytes()
    data_bits = len(packet)
    crc_value = calc_crc(temp_bytes, data_bits)

    # Add CRC (16 bits)
    packet.append(f"uint:16={crc_value}")

    # Pad to byte boundary
    while len(packet) % 8 != 0:
        packet.append("uint:1=0")

    return packet.bytes

def send_packets(ip="127.0.0.1", port=5005):
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    seq_counter = 1

    print(f"Sending packets to {ip}:{port}")
    while True:
        packet_type = seq_counter % 3
        
        if packet_type == 0:
            packet = build_hk_pkt(seq_counter % 65536)
            packet_name = "HK"
        elif packet_type == 1:
            packet = build_bf_pkt(seq_counter % 65536)
            packet_name = "BF"
        else:
            packet = build_ack_pkt(seq_counter % 65536)
            packet_name = "ACK"
            
        sock.sendto(packet, (ip, port))
        print(f"Sent {packet_name} packet (seq: {seq_counter % 65536}, {len(packet)} bytes)")
        seq_counter += 1
        time.sleep(1)

def send_packets_tcp(ip=None, port=None):
    """Send packets using TCP to match telemetry_manager expectations"""
    if ip is None:
        ip = config.DEFAULT_MCU_IP
    if port is None:
        port = config.DEFAULT_MCU_PORT
    
    seq_counter = 1
    
    print(f"Starting TCP server on {ip}:{port}")
    
    # Create TCP server socket
    server_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server_sock.bind((ip, port))
    server_sock.listen(1)
    
    print(f"Waiting for ground station connection...")
    
    while True:
        try:
            client_sock, addr = server_sock.accept()
            print(f"Ground station connected from {addr}")
            
            while True:
                packet_type = seq_counter % 3
                
                if packet_type == 0:
                    packet = build_hk_pkt(seq_counter % 65536)
                    packet_name = "HK"
                elif packet_type == 1:
                    packet = build_bf_pkt(seq_counter % 65536)
                    packet_name = "BF"
                else:
                    packet = build_ack_pkt(seq_counter % 65536)
                    packet_name = "ACK"
                
                try:
                    client_sock.send(packet)
                    print(f"Sent {packet_name} packet (seq: {seq_counter % 65536}, {len(packet)} bytes)")
                    seq_counter += 1
                    time.sleep(1)
                except socket.error:
                    print("Ground station disconnected")
                    break
                    
        except KeyboardInterrupt:
            print("Shutting down...")
            break
        except Exception as e:
            print(f"Error: {e}")
            time.sleep(1)
    
    server_sock.close()

if __name__ == "__main__":
    # Start mock MCU in a separate thread
    mcu_thread = threading.Thread(target=send_packets_tcp, daemon=True)
    mcu_thread.start()
    
    # Give the server a moment to start up
    time.sleep(1)
    
    # Start the ground station in the main thread
    print("Starting ground station...")
    try:
        run_main()
    except KeyboardInterrupt:
        print("Shutting down...")
