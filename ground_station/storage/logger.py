# write parsed data to CSV or file
import csv
import os
from datetime import datetime

class Logger:
    def __init__(self):
        now = datetime.now()
        timestamp = now.strftime("%Y-%m-%d_%H-%M-%S")
        
        current_dir = os.path.dirname(os.path.abspath(__file__))
        log_dir = os.path.join(current_dir, "logs")
        
        os.makedirs(log_dir, exist_ok=True)
        
        self.filename = os.path.join(log_dir, f"log_{timestamp}.csv")
        self.file_exists = os.path.isfile(self.filename)
        self.fieldnames = ["timestamp", "type", "seq_counter", "rtc", "data"]

        if not self.file_exists:
            with open(self.filename, mode='w', newline='') as file:
                writer = csv.DictWriter(file, fieldnames=self.fieldnames)
                writer.writeheader()

    def log(self, packet):
        with open(self.filename, mode='a', newline='') as file:
            writer = csv.DictWriter(file, fieldnames=self.fieldnames)
            packet_data = {
                "timestamp": datetime.now().isoformat(),
                "type": packet["type"],
                "seq_counter": packet["seq_counter"],
                "rtc": packet["rtc"],
                "data": str(packet)
            }
            writer.writerow(packet_data)