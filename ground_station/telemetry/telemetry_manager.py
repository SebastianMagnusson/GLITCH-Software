import json
import socket
import threading
import time
import errno
from datetime import datetime
import pandas as pd
from receiver.packet_parser import parse_packet
from storage.logger import Logger

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

    def start_connection(self, mcu_ip="192.168.4.2", port=8080):
        """Start the MCU connection in a separate thread"""
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
                sock.settimeout(10)
                
                print(f"Binding to 192.168.4.1...")
                sock.bind(('192.168.4.1', 0))
                print(f"Bound to ethernet interface 192.168.4.1")
                
                sock.connect((mcu_ip, port))
                print(f"Connected to MCU at {mcu_ip}:{port}")
                
                self.uplink_socket = sock
                
                while True:
                    data = sock.recv(4096)
                    if not data:
                        print("Connection closed by MCU")
                        break
                        
                    parsed = parse_packet(data)
                    if parsed:
                        print(f"Received packet: {parsed}")
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
            print("Retrying in 5 seconds...")
            time.sleep(5)

    def update(self, packet):
        packet_type = packet["type"]
        
        processed_packet = packet.copy()
        for key, value in processed_packet.items():
            if isinstance(value, float):
                processed_packet[key] = round(value, 2)
        
        self.current_data[packet_type] = processed_packet
        

        packet_with_time = processed_packet.copy()
        if "timestamp" not in packet_with_time:
            packet_with_time["timestamp"] = datetime.now().isoformat()
        self.history[packet_type].append(packet_with_time)
        
        if len(self.history[packet_type]) > 1000:
            self.history[packet_type] = self.history[packet_type][-1000:]
        
        for callback in self.callbacks:
            callback(processed_packet)
