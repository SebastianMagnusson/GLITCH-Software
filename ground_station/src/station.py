import socket
import logging
from collections import deque
import random
import time
import threading
import os

class GroundStation:
    def __init__(self, ip, port, test_mode=False):
        self.server_address = (ip, port)
        self.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.connected = False
        self.test_mode = test_mode
        self.data_callback = None
        if not self.test_mode:
            self.connect()
        
        #Setup log
        log_directory = os.path.join(os.path.dirname(__file__), '..', 'logs')
        os.makedirs(log_directory, exist_ok=True)
        log_file = os.path.join(log_directory, "sensor_data.log")
        logging.basicConfig(filename=log_file, level=logging.INFO, format="%(asctime)s - %(message)s")        
        self.data_queues = [deque(maxlen=100) for _ in range(6)]  #Set maxlen to 500
        
        if self.test_mode:
            for queue in self.data_queues:
                queue.extend([random.uniform(0, 100) for _ in range(100)])

        self.receive_thread = threading.Thread(target=self.receive_sensor_data)
        self.receive_thread.daemon = True
        self.receive_thread.start()

    #Set ut callback function for GUI updating
    def set_data_callback(self, callback):
        self.data_callback = callback 

    def receive_sensor_data(self):
        while True:
            if self.test_mode:
                #Simulate receiving data
                data = [random.uniform(0, 100) for _ in range(6)]
                #print(f"Received sensor data: {data}")
                logging.info(data)
                print("logged")
                if self.data_callback:
                    self.data_callback(data)
                for i, value in enumerate(data):
                    self.data_queues[i].append(value)
                time.sleep(1)
            else:
                if not self.connected:
                    break
                try:
                    data = self.socket.recv(1024).decode().strip().split(',')
                    if data:
                        print(f"Received sensor data: {data}")
                        logging.info(data)
                        if self.data_callback:
                            self.data_callback(data)
                        for i, value in enumerate(data):
                            self.data_queues[i].append(float(value))
                except Exception as e:
                    print(f"Error receiving data: {e}")
                    break