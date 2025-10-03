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

# Override config with localhost IPs for testing
config.DEFAULT_MCU_IP = "127.0.0.1"
config.DEFAULT_GROUND_STATION_IP = "127.0.0.1"
config.DEFAULT_MCU_PORT = 8080
config.LOGS_DIR = "storage/logs"
print(f"Testing mode: Using localhost IPs - MCU: {config.DEFAULT_MCU_IP}:{config.DEFAULT_MCU_PORT}, GS: {config.DEFAULT_GROUND_STATION_IP}")

# Initial position (Kiruna, Sweden)
initial_lat = 67.887553
initial_lon = 21.082744
#67.887553, 21.082744

# Movement parameters
lat_increment_per_packet = 0.002  # Move ~200 meters north per packet
lon_drift_range = 0.001           # Small east/west drift

#initial temperatures for all sensors
internal_temp = 24559
external_temp = 13743
sensor_board_temp = 26797

def get_current_gnss_position(seq_counter):
    """Calculate current GNSS position based on sequence counter"""
    # Move north gradually
    current_lat = initial_lat + (seq_counter * lat_increment_per_packet)
    
    # Add small random east/west drift (wind effect)
    lon_drift = random.uniform(-lon_drift_range, lon_drift_range)
    current_lon = initial_lon + lon_drift
    
    return current_lat, current_lon

def format_gnss_coordinate(coord, is_latitude=True):
    """Convert decimal degrees to DDMM.MMMM format"""
    abs_coord = abs(coord)
    degrees = int(abs_coord)
    minutes = (abs_coord - degrees) * 60
    
    if is_latitude:
        # Latitude: DDMM.MMMM (2 digits for degrees)
        return f"{degrees:02d}{minutes:06.3f}"
    else:
        # Longitude: DDDMM.MMMM (3 digits for degrees) 
        return f"{degrees:03d}{minutes:06.3f}"

def build_hk_pkt(seq_counter):
    packet = BitArray()

    # Packet ID (2 bits) + Sequence Counter (16 bits) 
    packet.append("uint:2=0")                 # HK packet type
    packet.append(f"uint:16={seq_counter}")   # 16-bit sequence counter

    # RTC (24 bits) - updated from 17 bits
    packet.append(f"uint:24={45678 + seq_counter}")

    # GNSS (384 bits = 48 bytes) - encode the moving GNSS string
    current_lat, current_lon = get_current_gnss_position(seq_counter)
    
    # Format coordinates in GPRMC format - FIXED conversion
    lat_formatted = format_gnss_coordinate(current_lat, True)
    lat_dir = 'N' if current_lat >= 0 else 'S'
    
    lon_formatted = format_gnss_coordinate(current_lon, False)
    lon_dir = 'E' if current_lon >= 0 else 'W'
    
    # Build GPRMC string with moving coordinates
    gnss_string = f"$GPRMC,140618.206,A,{lat_formatted},{lat_dir},{lon_formatted},{lon_dir},0.4"
    
    # Debug: Print the actual GNSS string being generated
    if seq_counter % 10 == 1:  # Print every 10th packet to avoid spam
        print(f"Packet {seq_counter}: GNSS string = '{gnss_string}'")
        print(f"  Decimal: Lat {current_lat:.6f}, Lon {current_lon:.6f}")
        print(f"  DDMM.MMM: Lat {lat_formatted}{lat_dir}, Lon {lon_formatted}{lon_dir}")
    
    gnss_bytes = gnss_string.encode('ascii')
    
    # Pad or truncate to exactly 48 bytes
    if len(gnss_bytes) < 48:
        gnss_bytes += b'\x00' * (48 - len(gnss_bytes))  # Null-pad
    else:
        gnss_bytes = gnss_bytes[:48]  # Truncate if too long
    
    # Convert bytes to bits and append
    for byte in gnss_bytes:
        packet.append(f"uint:8={byte}")

    global internal_temp, external_temp
    random_offset = random.randint(-1, 1)
    internal_temp += random_offset * 100  
    external_temp += random_offset * 100

    # Temperature sensors (16 bits each) - updated from 32 bits
    packet.append(f"uint:16={internal_temp & 0xFFFF}")  
    packet.append(f"uint:16={external_temp & 0xFFFF}")  

    # Altitude increases as balloon goes north (simulating ascent)
    base_altitude = 100000
    altitude_increase = seq_counter * 50  # 50 meters per packet
    altitude = base_altitude + altitude_increase + random.randint(-50, 50)
    packet.append(f"int:24={altitude & 0xFFFFFF}")

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

    # RTC (24 bits) - updated from 17 bits
    packet.append(f"uint:24={45678 + seq_counter}")

    # BF packet structure based on packet_structures.py
    # Tot (8 bits)
    packet.append(f"uint:8={random.randint(1, 10)}")
    
    # Now (2 bits)
    packet.append(f"uint:2={random.randint(0, 3)}")
    
    # 4 sets of: addr(22), data(16), which_sram(4), temp(1), oscillators(4)
    for i in range(4):
        packet.append(f"uint:22={random.randint(0, 0x3FFFFF)}")  # addr
        packet.append(f"uint:16={random.randint(0, 0xFFFF)}")    # data
        packet.append(f"uint:4={random.randint(0, 15)}")         # which_sram
        packet.append(f"uint:1={random.randint(0, 1)}")          # temp
        packet.append(f"uint:4={random.randint(0, 15)}")         # oscillators

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

def corrupt_packet(packet_bytes):
    """Introduce corruption into a packet to test error handling"""
    corruption_type = random.randint(1, 4)
    corrupted = bytearray(packet_bytes)
    
    if corruption_type == 1:
        # Flip random bits
        num_flips = random.randint(1, 3)
        for _ in range(num_flips):
            byte_idx = random.randint(0, len(corrupted) - 1)
            bit_idx = random.randint(0, 7)
            corrupted[byte_idx] ^= (1 << bit_idx)
    elif corruption_type == 2:
        # Corrupt CRC (last 2 bytes)
        if len(corrupted) >= 2:
            corrupted[-1] = random.randint(0, 255)
            corrupted[-2] = random.randint(0, 255)
    elif corruption_type == 3:
        # Truncate packet
        if len(corrupted) > 2:
            truncate_size = random.randint(1, min(3, len(corrupted) - 1))
            corrupted = corrupted[:-truncate_size]
    else:
        # Add random bytes
        extra_bytes = random.randint(1, 3)
        for _ in range(extra_bytes):
            corrupted.append(random.randint(0, 255))
    
    return bytes(corrupted)


def send_packets_tcp(ip=None, port=None):
    """Send packets one at a time using TCP to match telemetry_manager expectations"""
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
                # Send one packet type per cycle - only HK and BF now
                packet_type = seq_counter % 2
                
                if packet_type == 0:
                    packet = build_hk_pkt(seq_counter % 65536)
                    packet_name = "HK"
                else:
                    packet = build_bf_pkt(seq_counter % 65536)
                    packet_name = "BF"

                # Randomly corrupt packets (5% chance - reduced for testing)
                send_packet = packet
                name = packet_name
                if random.random() < 0.001:
                    send_packet = corrupt_packet(packet)
                    name += " (CORRUPTED)"

                try:
                    client_sock.send(send_packet)
                    #print(f"Sent {name} packet (seq: {seq_counter % 65536}, {len(send_packet)} bytes)")
                    seq_counter += 1
                    time.sleep(1)  # 1 second delay between packets for easier observation
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