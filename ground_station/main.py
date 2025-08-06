from telemetry.telemetry_manager import TelemetryManager
from gui.dashboard import run
import config

def main():
    print(f"Starting GLITCH Ground Station")
    print(f"Configuration:")
    print(f"  MCU IP: {config.DEFAULT_MCU_IP}")
    print(f"  MCU Port: {config.DEFAULT_MCU_PORT}")
    print(f"  Ground Station IP: {config.DEFAULT_GROUND_STATION_IP}")
    print(f"  Connection Timeout: {config.CONNECTION_TIMEOUT}s")
    print(f"  Max History Size: {config.MAX_HISTORY_SIZE}")
    
    telemetry_manager = TelemetryManager()
    telemetry_manager.start_connection()
    
    run(telemetry_manager)

if __name__ == "__main__":
    main()