import json
from datetime import datetime
import pandas as pd

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
    
    def register_callback(self, callback):
        self.callbacks.append(callback)
    
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
