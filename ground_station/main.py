from telemetry.telemetry_manager import TelemetryManager
from uplink.uplink_sender import send_telecommand
from gui.dashboard import Dashboard, run
import threading

if __name__ == "__main__":
    telemetry_manager = TelemetryManager()
    
    # Start the MCU connection
    telemetry_manager.start_connection()
    
    run(telemetry_manager)