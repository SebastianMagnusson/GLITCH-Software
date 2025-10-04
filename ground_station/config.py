# Configuration settings for ground station

# Network settings
import os, time

DEFAULT_MCU_IP = "172.16.18.161"
DEFAULT_MCU_PORT = 8080
DEFAULT_GROUND_STATION_IP = "172.16.18.160"

# Connection settings
CONNECTION_TIMEOUT = 30
RECONNECT_DELAY = 5
SOCKET_RECV_BUFFER = 4096

# Data settings
MAX_HISTORY_SIZE = 1000
MAX_LOG_ENTRIES = 100
LOGS_DIR = "/Volumes/GLITCH_SSD/storage/logs"

# If the logs dont work just remove this stuff below and set LOGS_DIR above to a local directory
#
# ↓↓↓↓↓↓↓
#
#check if /Volumes/GLITCH_SSD exists, if not use local directory
if not os.path.exists("/Volumes/GLITCH_SSD"):
    print("Cannot find /Volumes/GLITCH_SSD, use local directory? (y/n): ", end="")
    choice = input().strip().lower()
    if choice == "y":
        LOGS_DIR = "./storage/logs"
    else:
        while not os.path.exists("/Volumes/GLITCH_SSD"):
            print("Waiting for /Volumes/GLITCH_SSD to be connected...")
            time.sleep(5)
        LOGS_DIR = "/Volumes/GLITCH_SSD/storage/logs"
        exit(1)
#
# ↑↑↑↑↑↑↑
# 

# Packet settings
MAX_DATA_POINTS_GRAPH = 500

