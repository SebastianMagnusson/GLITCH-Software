# write parsed data to CSV or file
import csv
import os
from datetime import datetime
import config

class Logger:
    def __init__(self):
        # Create logs directory if it doesn't exist
        os.makedirs(config.LOGS_DIR, exist_ok=True)
        
        # Set up log file paths
        self.log_file = os.path.join(config.LOGS_DIR, "telemetry.log")
        self.corrupt_log_file = os.path.join(config.LOGS_DIR, "corrupt_packets.log")
        
        # Initialize log files with headers if they don't exist
        if not os.path.exists(self.log_file):
            with open(self.log_file, 'w') as f:
                f.write("timestamp,type,data\n")
                
        if not os.path.exists(self.corrupt_log_file):
            with open(self.corrupt_log_file, 'w') as f:
                f.write("timestamp,type,raw_hex_data\n")
    
    def log(self, packet):
        """Log valid parsed packets"""
        timestamp = datetime.now().isoformat()
        try:
            with open(self.log_file, 'a') as f:
                f.write(f"{timestamp},{packet['type']},{packet}\n")
        except Exception as e:
            print(f"Error logging packet: {e}")
    
    def log_corrupt_packet(self, raw_data):
        """Log corrupt packet data for debugging"""
        timestamp = datetime.now().isoformat()
        try:
            with open(self.corrupt_log_file, 'a') as f:
                f.write(f"{timestamp},CORRUPT,{raw_data.hex()}\n")
        except Exception as e:
            print(f"Error logging corrupt packet: {e}")