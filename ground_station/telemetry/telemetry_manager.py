import socket
import threading
import time
import errno
from datetime import datetime
from receiver.packet_parser import parse
from storage.logger import Logger
import config

class TelemetryManager:
    def __init__(self):
        self.current_data = {
            "HK": {},
            "BF": {},
            "RAD": {},
            "ACK": {}
        }
        self.history = {
            "HK": [],
            "BF": [],
            "RAD": [],
            "ACK": []
        }
        self.callbacks = []
        self.uplink_socket = None
        self._connection_thread = None
        self.logger = Logger()
        
        # Track sequence numbers per packet type
        self.last_sequence_numbers = {
            "HK": None,
            "BF": None,
            "RAD": None,
            "ACK": None
        }
        
        # Add packet statistics tracking
        self.packet_stats = {
            "total_received": 0,
            "valid_packets": 0,
            "corrupt_packets": 0,
            "lost_packets": 0
        }

        self.packet_type_counts = {
            "HK": 0,
            "BF": 0,
            "RAD": 0,
            "ACK": 0
        }
    
    def register_callback(self, callback):
        self.callbacks.append(callback)

    def start_connection(self, mcu_ip=None, port=None):
        """Start the MCU connection in a separate thread"""
        if mcu_ip is None:
            mcu_ip = config.DEFAULT_MCU_IP
        if port is None:
            port = config.DEFAULT_MCU_PORT
            
        self._connection_thread = threading.Thread(
            target=self._manage_mcu_connection, 
            args=(mcu_ip, port),
            daemon=True
        )
        self._connection_thread.start()
    
    def _manage_mcu_connection(self, mcu_ip, port):
        sock = None
        
        while True:
            try:
                print(f"Creating socket...")
                sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                sock.settimeout(config.CONNECTION_TIMEOUT)
                
                print(f"Binding to {config.DEFAULT_GROUND_STATION_IP}...")
                sock.bind((config.DEFAULT_GROUND_STATION_IP, 0))
                print(f"Bound to ethernet interface {config.DEFAULT_GROUND_STATION_IP}")
                
                sock.connect((mcu_ip, port))
                print(f"Connected to MCU at {mcu_ip}:{port}")
                
                self.uplink_socket = sock
                
                while True:
                    data = sock.recv(config.SOCKET_RECV_BUFFER)
                    if not data:
                        print("Connection closed by MCU")
                        break

                    # Print complete packet in binary
                    packet_bin_str = ''.join(format(byte, '08b') for byte in data)
                    print(f"Full packet (binary): {packet_bin_str}")

                    # Increment total received packets
                    self.packet_stats["total_received"] += 1

                    parsed = parse(data)
                    if parsed:
                        print(f"Received packet: {parsed}")
                        self.packet_stats["valid_packets"] += 1
                        
                        # Check for lost packets per packet type
                        packet_type = parsed["type"]
                        if "seq_counter" in parsed and packet_type in self.last_sequence_numbers:
                            current_seq = parsed["seq_counter"]
                            last_seq = self.last_sequence_numbers[packet_type]
                            
                            if last_seq is not None:
                                seq_mod = 65536  # uint16 sequence counter
                                expected_seq = (last_seq + 1) % seq_mod
                                
                                if current_seq != expected_seq:
                                    # Calculate lost packets for this packet type
                                    if current_seq > expected_seq:
                                        lost = current_seq - expected_seq
                                    else:
                                        # Handle wraparound
                                        lost = (seq_mod - expected_seq) + current_seq
                                    
                                    self.packet_stats["lost_packets"] += lost
                                    print(f"Detected {lost} lost {packet_type} packets. Expected: {expected_seq}, Got: {current_seq}")
                            
                            # Update the sequence number for this packet type
                            self.last_sequence_numbers[packet_type] = current_seq
                        
                        self.logger.log(parsed)
                        self.update(parsed)
                    else:
                        print(f"Received corrupt packet - raw data: {packet_bin_str}")
                        self.packet_stats["corrupt_packets"] += 1
                        self.logger.log_corrupt_packet(data)
                        
            except socket.error as e:
                print(f"Socket error: {e}")
                print(f"Error number: {e.errno}")
                self.uplink_socket = None  # Clear socket immediately
                if e.errno == errno.ECONNREFUSED:
                    print("Connection refused - MCU TCP server not running")
                elif e.errno == errno.EHOSTUNREACH:
                    print("Host unreachable - network routing issue")
                elif e.errno == errno.ETIMEDOUT:
                    print("Connection timeout - MCU not responding")
            except Exception as e:
                print(f"General error: {e}")
                self.uplink_socket = None  # Clear socket immediately
                
            if sock:
                sock.close()
                self.uplink_socket = None
            print(f"Retrying in {config.RECONNECT_DELAY} seconds...")
            time.sleep(config.RECONNECT_DELAY)

    def update(self, packet):
        packet_type = packet["type"]
        
        processed_packet = packet.copy()
        for key, value in processed_packet.items():
            if isinstance(value, float):
                processed_packet[key] = round(value, 2)

        if packet_type in self.packet_type_counts:
            self.packet_type_counts[packet_type] += 1

        
        self.current_data[packet_type] = processed_packet
        

        packet_with_time = processed_packet.copy()
        if "timestamp" not in packet_with_time:
            packet_with_time["timestamp"] = datetime.now().isoformat()
        self.history[packet_type].append(packet_with_time)
        
        if len(self.history[packet_type]) > config.MAX_HISTORY_SIZE:
            self.history[packet_type] = self.history[packet_type][-config.MAX_HISTORY_SIZE:]
        
        for callback in self.callbacks:
            callback(processed_packet)
    
    def get_packet_stats(self):
        """Return current packet statistics"""
        return self.packet_stats.copy()
    
    def reset_packet_stats(self):
        """Reset packet statistics counters"""
        self.packet_stats = {
            "total_received": 0,
            "valid_packets": 0,
            "corrupt_packets": 0,
            "lost_packets": 0
        }
        
        # Also reset sequence number tracking
        self.last_sequence_numbers = {
            "HK": None,
            "BF": None,
            "RAD": None,
            "ACK": None
        }
