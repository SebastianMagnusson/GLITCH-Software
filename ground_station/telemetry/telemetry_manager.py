import socket
import threading
import time
import errno
from datetime import datetime
from receiver.packet_parser import parse
from receiver.packet_types import HousekeepingPacket, BitFlipPacket, AckPacket, RadiationPacket
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
                        
                    parsed = parse(data)
                    if parsed:
                        print(f"Received packet: {type(parsed).__name__}")
                        self.logger.log(parsed)
                        self.update(parsed)
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
                self.uplink_socket = None
            print(f"Retrying in {config.RECONNECT_DELAY} seconds...")
            time.sleep(config.RECONNECT_DELAY)

    def _packet_to_dict(self, packet):
        """Convert dataclass packet to dictionary for backward compatibility"""
        # Determine packet type
        if isinstance(packet, HousekeepingPacket):
            packet_type = "HK"
        elif isinstance(packet, BitFlipPacket):
            packet_type = "BF"
        elif isinstance(packet, AckPacket):
            packet_type = "ACK"
        elif isinstance(packet, RadiationPacket):
            packet_type = "RAD"
        else:
            packet_type = "UNKNOWN"
        
        # Convert dataclass to dict and add type
        packet_dict = {
            "type": packet_type,
            **packet.__dict__
        }
        
        # Round float values
        for key, value in packet_dict.items():
            if isinstance(value, float):
                packet_dict[key] = round(value, 2)
        
        return packet_dict

    def update(self, packet):
        """Update telemetry data with new packet"""
        # Convert dataclass to dict for backward compatibility
        packet_dict = self._packet_to_dict(packet)
        packet_type = packet_dict["type"]
        
        # Store current data
        self.current_data[packet_type] = packet_dict
        
        # Add to history with timestamp
        packet_with_time = packet_dict.copy()
        if "timestamp" not in packet_with_time:
            packet_with_time["timestamp"] = datetime.now().isoformat()
        self.history[packet_type].append(packet_with_time)
        
        # Limit history size
        if len(self.history[packet_type]) > config.MAX_HISTORY_SIZE:
            self.history[packet_type] = self.history[packet_type][-config.MAX_HISTORY_SIZE:]
        
        # Call registered callbacks with both dataclass and dict
        for callback in self.callbacks:
            try:
                # Try calling with dataclass first (for new code)
                callback(packet)
            except TypeError:
                try:
                    # Fall back to dict (for backward compatibility)
                    callback(packet_dict)
                except Exception as e:
                    print(f"Callback error: {e}")

    def get_latest_packet(self, packet_type):
        """Get the latest packet of a specific type"""
        return self.current_data.get(packet_type, {})
    
    def get_packet_history(self, packet_type, limit=None):
        """Get packet history for a specific type"""
        history = self.history.get(packet_type, [])
        if limit:
            return history[-limit:]
        return history
    
    def get_all_current_data(self):
        """Get all current telemetry data"""
        return self.current_data.copy()