from receiver.socket_listener import dl_pkts
from uplink.uplink_sender import send_telecommand
from gui.dashboard import TelemetryManager, Dashboard, run
import threading

if __name__ == "__main__":
    telemetry_manager = TelemetryManager()
    
    listener_thread = threading.Thread(
        target=dl_pkts, 
        kwargs={"telemetry_manager": telemetry_manager}
    )
    listener_thread.daemon = True
    listener_thread.start()
    
    run(telemetry_manager)