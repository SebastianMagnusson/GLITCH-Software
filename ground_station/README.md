# Ground Station module

A Python-based ground station for receiving, processing, and visualizing telemetry data from the GLITCH mission.

## Overview

The GLITCH Ground Station provides a dashboard for monitoring telemetry data including housekeeping parameters, bit flip detection, radiation measurements, and acknowledgment packets. It features real-time data visualization, command logging, and data storage capabilities.

## Features

- **Real-time Telemetry Display**: Live monitoring of health and status
- **Interactive Dashboard**: PyQt5-based GUI with multiple data panels
- **Data Visualization**: Real-time graphs for temperature and altitude data
- **Command Logging**: Track and log all telecommands sent to the experiment
- **Data Storage**: Automatic CSV logging of all received telemetry
- **Network Communication**: TCP/IP communication with MCU
- **Packet Processing**: Automatic parsing and validation of telemetry packets

## System Requirements

- Python 3.7+
- PyQt5
- NumPy
- Pandas
- PyQtGraph
- Network connectivity to MCU

## Installation

1. Clone the repository:
```bash
git clone <https://github.com/SebastianMagnusson/GLITCH-Software.git>
cd GLITCH-Software/ground_station
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Configure network settings in [`config.py`](config.py) if needed:
```python
DEFAULT_MCU_IP = "192.168.4.2"
DEFAULT_MCU_PORT = 8080
DEFAULT_GROUND_STATION_IP = "192.168.4.1"
```

## Usage

### Starting the Ground Station

Run the main application:
```bash
python main.py
```

The ground station will automatically attempt to connect to the MCU using the configured IP and port.

### Dashboard Layout

The dashboard is organized into several sections:

#### Left Panel - Telemetry Data
- **Housekeeping (HK)**: Basic health parameters
  - Sequence Counter
  - RTC (Real-Time Clock)
  - Internal/External Temperature
  - Sensor Board Temperature
  - GNSS data
  - Altitude
  - Radiation levels

- **Bit Flip (BF)**: Memory corruption detection
  - Sequence Counter
  - RTC
  - Bit flip data

- **Radiation**: Radiation measurement data
  - Sequence Counter
  - RTC
  - Radiation readings

#### Right Panel - Command & Control
- **Acknowledgment (ACK)**: Command acknowledgments from MCU
- **TC Log**: Command history with timestamps
- **Control Buttons**: Send various telecommands to MCU

#### Center Panel - Data Visualization
- **Temperature Graph**: Real-time temperature monitoring
  - Internal temperature
  - External temperature
  - Sensor board temperature
- **Altitude Graph**: Altitude tracking over time

### Available Commands

The ground station can send the following telecommands:

- **CHANGE MODE**: Switch experiment operating modes
- **RESET**: Restart experiment systems

### Data Logging

All received telemetry is automatically logged to CSV files in the [`storage/logs/`](storage/logs/) directory with timestamps. Log files include:

- Timestamp
- Packet type
- Sequence counter
- RTC data
- Complete packet data

## File Structure

```
ground_station/
├── main.py                 # Application entry point
├── config.py              # Configuration settings
├── requirements.txt       # Python dependencies
├── gui/
│   └── dashboard.py       # Main dashboard GUI
├── telemetry/
│   └── telemetry_manager.py  # Telemetry processing
├── storage/
│   ├── logger.py         # Data logging functionality
│   └── logs/             # Log file directory
├── receiver/
│   └── ...               # Packet receiving modules
├── uplink/
│   └── ...               # Command uplink modules
└── tests/
    └── ...               # Unit tests
```

## Configuration

Key configuration parameters in [`config.py`](config.py):

```python
# Network settings
DEFAULT_MCU_IP = "192.168.4.2"          # experiment MCU IP address
DEFAULT_MCU_PORT = 8080                   # Communication port
DEFAULT_GROUND_STATION_IP = "192.168.4.1" # Ground station IP

# Connection settings
CONNECTION_TIMEOUT = 10                   # Connection timeout (seconds)
RECONNECT_DELAY = 5                      # Reconnection delay (seconds)

# Data settings
MAX_HISTORY_SIZE = 1000                  # Maximum data points stored
MAX_LOG_ENTRIES = 100                    # Maximum log entries displayed
MAX_DATA_POINTS_GRAPH = 100             # Maximum graph data points
```

## Troubleshooting

### Connection Issues
- Verify network connectivity to experiment MCU
- Check IP address and port configuration
- Ensure firewall allows the connection
- Check experiment MCU is running and accessible

### Data Display Issues
- Verify packet format matches expected structure
- Review log files for parsing errors

### Performance Issues
- Reduce `MAX_DATA_POINTS_GRAPH` for better performance
- Check system resources and memory usage

### Testing
For testing, change the `DEFAULT_MCU_IP` and `DEFAULT_GROUND_STATION_IP` in `config.py` to an assignable IP address for your setup. E.g. `127.0.0.1` for local testing.

Run unit tests:
```bash
python -m pytest tests/
```