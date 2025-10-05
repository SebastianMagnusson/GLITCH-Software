import sys
import os
import pandas as pd
import numpy as np
import pyqtgraph as pg
import json
from PyQt5.QtWidgets import (QApplication, QMainWindow, QWidget, 
                            QVBoxLayout, QHBoxLayout, QLabel, QTableWidget, 
                            QTableWidgetItem, QPushButton, QGroupBox, QComboBox,
                            QFrame, QHeaderView)
from PyQt5.QtCore import Qt, QTimer, pyqtSignal, QObject, QUrl
from telemetry.telemetry_manager import TelemetryManager
from uplink.uplink_sender import send_telecommand
from uplink.tc_types import TC_RESET, TC_SET_MODE_POWER_SAVE, TC_SET_MODE_NORMAL, TC_SEND_HELLO, TC_SET_RTC, TC_CLEAR_SD, TC_CUT_OFF
from config import CONNECTION_TIMEOUT
from PyQt5.QtWidgets import QMessageBox
from PyQt5.QtWebEngineWidgets import QWebEngineView
import config
from utils import rtc_str_to_seconds
import tempfile

class Dashboard(QMainWindow):
    packet_received_signal = pyqtSignal(dict)
    
    def __init__(self, telemetry_manager):
        super().__init__()
        
        self.uplink_seq_counter = 0
        self.last_packet_time = None
        self.connection_timeout = CONNECTION_TIMEOUT

        self.status_timer = QTimer()
        self.status_timer.timeout.connect(self.update_connection_status)
        self.status_timer.start(1000)  # Check every 1 second

        # Configure dark theme for graphs
        pg.setConfigOption('background', '#393939')
        pg.setConfigOption('foreground', 'w')
        
        self.telemetry_manager = telemetry_manager
        
        self.setWindowTitle("GLITCH Ground Station")
        
        self.setGeometry(100, 100, 1200, 650)
        
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        main_layout = QVBoxLayout(central_widget)
        
        # Header section
        header_layout = QHBoxLayout()
        title_label = QLabel("GLITCH Dashboard")
        title_label.setStyleSheet("font-size: 18px; font-weight: bold;")
        header_layout.addWidget(title_label)

        # Create status layout with circle and text
        status_layout = QHBoxLayout()
        status_layout.setSpacing(8)

        # Create status circle
        self.status_circle = QLabel("●")
        self.status_circle.setFixedSize(16, 16)
        self.status_circle.setAlignment(Qt.AlignCenter)
        self.status_circle.setStyleSheet("color: red; font-size: 14px; font-weight: bold;")

        # Create status text
        self.status_label = QLabel("Status: Disconnected from MCU")
        self.status_label.setAlignment(Qt.AlignVCenter)

        status_layout.addWidget(self.status_circle)
        status_layout.addWidget(self.status_label)

        # Create status widget and add to header
        status_widget = QWidget()
        status_widget.setLayout(status_layout)
        header_layout.addWidget(status_widget)
        main_layout.addLayout(header_layout)
        
        # Main layout
        content_layout = QHBoxLayout()
        
        # Left panel for telemetry data
        left_panel = QVBoxLayout()
        left_panel.setSpacing(10) 
        left_panel.setAlignment(Qt.AlignTop) 
        
        # Housekeeping
        self.hk_group = QGroupBox("Housekeeping (HK)")
        hk_layout = QVBoxLayout(self.hk_group)
        self.hk_labels = {}
        
        hk_params = [
            ("Sequence Counter", "seq_counter"), 
            ("RTC", "rtc"),
            ("Internal Temp", "internal"),
            ("GNSS", "gnss"),
            ("Altitude", "altitude"),
        ]
        
        for display_name, param_key in hk_params:
            hbox = QHBoxLayout()
            key_label = QLabel(f"{display_name}:")
            key_label.setFixedWidth(150)
            value_label = QLabel("--")
            hbox.addWidget(key_label)
            hbox.addWidget(value_label)
            hk_layout.addLayout(hbox)
            self.hk_labels[param_key] = value_label
        
        left_panel.addWidget(self.hk_group)
        
        # Bit Flip
        self.bf_group = QGroupBox("Bit flip (BF)")
        bf_layout = QVBoxLayout(self.bf_group)

        # BF summary labels stacked vertically
        self.bf_labels = {}
        bf_summary_params = [
            ("Sequence Counter", "seq_counter"),
            ("RTC", "rtc"),
            ("Tot", "tot"),
            ("Now", "now"),
        ]
        for display_name, param_key in bf_summary_params:
            hbox = QHBoxLayout()
            key_label = QLabel(f"{display_name}:")
            key_label.setFixedWidth(120)
            value_label = QLabel("--")
            hbox.addWidget(key_label)
            hbox.addWidget(value_label)
            bf_layout.addLayout(hbox)
            self.bf_labels[param_key] = value_label

        # Table for 0,1,2,3 columns and addr/data/which/temp/osc rows
        self.bf_row_names = ["addr", "data", "which_sram", "temp", "oscillators"]
        self.bf_table = QTableWidget(len(self.bf_row_names), 4)
        self.bf_table.setHorizontalHeaderLabels(["0", "1", "2", "3"])
        self.bf_table.setVerticalHeaderLabels(["Addr", "Data", "SRAM", "Temp", "Osc"])
        self.bf_table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeToContents)
        self.bf_table.verticalHeader().setSectionResizeMode(QHeaderView.ResizeToContents)
        self.bf_table.setEditTriggers(QTableWidget.NoEditTriggers)
        self.bf_table.setSelectionMode(QTableWidget.NoSelection)
        self.bf_table.setFixedWidth(260)
        self.bf_table.setStyleSheet("font-size: 10px;")
        for row in range(len(self.bf_row_names)):
            for col in range(4):
                self.bf_table.setItem(row, col, QTableWidgetItem("--"))
        bf_layout.addWidget(self.bf_table)

        left_panel.addWidget(self.bf_group)

        # Radiation
        self.rad_group = QGroupBox("Radiation")
        rad_layout = QVBoxLayout(self.rad_group)
        self.rad_labels = {}

        rad_params = [
            ("Sequence Counter", "seq_counter"),
            ("RTC", "rtc"),
            ("Data Size (bits)", "radiation_size"),  # Add data size field
            ("Data Preview", "radiation_preview")     # Add preview field
        ]

        for display_name, param_key in rad_params:
            hbox = QHBoxLayout()
            key_label = QLabel(f"{display_name}:")
            key_label.setFixedWidth(150)
            value_label = QLabel("--")
            hbox.addWidget(key_label)
            hbox.addWidget(value_label)
            rad_layout.addLayout(hbox)
            self.rad_labels[param_key] = value_label

        left_panel.addWidget(self.rad_group)
        
        # Packet statistics section
        stats_group = QGroupBox("Packet statistics")
        stats_layout = QVBoxLayout(stats_group)
        stats_layout.addWidget(QLabel("Overall statistics"))
        
        # Total received packets
        hbox = QHBoxLayout()
        hbox.addWidget(QLabel("Total packets:"))
        self.total_packets_label = QLabel("0")
        hbox.addWidget(self.total_packets_label)
        stats_layout.addLayout(hbox)
        
        # Lost packets
        hbox = QHBoxLayout()
        hbox.addWidget(QLabel("Lost packets:"))
        self.lost_packets_label = QLabel("0")
        hbox.addWidget(self.lost_packets_label)
        stats_layout.addLayout(hbox)
        
        # Corrupt packets
        hbox = QHBoxLayout()
        hbox.addWidget(QLabel("Corrupt packets:"))
        self.corrupt_packets_label = QLabel("0")
        hbox.addWidget(self.corrupt_packets_label)
        stats_layout.addLayout(hbox)
        
        # Valid packets
        hbox = QHBoxLayout()
        hbox.addWidget(QLabel("Valid packets:"))
        self.valid_packets_label = QLabel("0")
        hbox.addWidget(self.valid_packets_label)
        stats_layout.addLayout(hbox)
        
        line = QFrame()
        line.setFrameShape(QFrame.HLine)
        line.setFrameShadow(QFrame.Sunken)
        stats_layout.addWidget(line)
        
        # Add packet type section
        stats_layout.addWidget(QLabel("Received by type"))
        
        self.packet_counters = {
            "HK": 0,
            "BF": 0,
            "ACK": 0,
            "RAD": 0
        }

        for packet_type in ["HK", "BF", "ACK", "RAD"]:
            hbox = QHBoxLayout()
            hbox.addWidget(QLabel(f"{packet_type}:"))
            counter_label = QLabel("0")
            hbox.addWidget(counter_label)
            stats_layout.addLayout(hbox)
            self.packet_counters[packet_type] = counter_label
        
        

        # Create right panel for commands
        right_panel = QVBoxLayout()
        right_panel.setSpacing(10)
        right_panel.setAlignment(Qt.AlignTop)

        right_panel.addWidget(stats_group)
        
        # Telecommands section
        cmd_group = QGroupBox("TC Uplink")
        cmd_layout = QVBoxLayout(cmd_group)
        
        hbox = QHBoxLayout()
        hbox.addWidget(QLabel("Command Type:"))
        self.cmd_type_combo = QComboBox()
        self.cmd_type_combo.addItems(["RESET", "CHANGE MODE","SEND HELLO","SET RTC","CLEAR SD","CUT OFF"])
        hbox.addWidget(self.cmd_type_combo)
        cmd_layout.addLayout(hbox)

        self.mode_options_widget = QWidget()
        self.mode_options = QHBoxLayout(self.mode_options_widget)
        self.mode_options.setAlignment(Qt.AlignLeft)
        self.mode_options.addWidget(QLabel("Mode:"))
        self.mode_combo = QComboBox()
        self.mode_combo.addItems(["NORMAL", "POWER SAVING"])
        self.mode_options.addWidget(self.mode_combo)
        self.mode_options_widget.setVisible(False)
        cmd_layout.addWidget(self.mode_options_widget)

        def toggle_mode_options(command_type):
            if command_type == "CHANGE MODE":
                self.mode_options_widget.setVisible(True)
            else:
                self.mode_options_widget.setVisible(False)
        self.cmd_type_combo.currentTextChanged.connect(toggle_mode_options)
        
        self.send_cmd_button = QPushButton("Send TC")
        self.send_cmd_button.clicked.connect(self.user_confirm)
        cmd_layout.addWidget(self.send_cmd_button)

        right_panel.addWidget(cmd_group)

        # Acknowledgment section
        self.ack_group = QGroupBox("Acknowledgment (ACK)")
        ack_layout = QVBoxLayout(self.ack_group)
        self.ack_labels = {}
        
        ack_params = [
            ("Sequence Counter", "seq_counter"),
            ("Telecommand Ack", "telecommand_ack")
        ]
        
        for display_name, param_key in ack_params:
            hbox = QHBoxLayout()
            key_label = QLabel(f"{display_name}:")
            key_label.setFixedWidth(150)
            value_label = QLabel("--")
            hbox.addWidget(key_label)
            hbox.addWidget(value_label)
            ack_layout.addLayout(hbox)
            self.ack_labels[param_key] = value_label
            
        right_panel.addWidget(self.ack_group)
        
        # Command History Log section
        cmd_log_group = QGroupBox("TC Log")
        cmd_log_layout = QVBoxLayout(cmd_log_group)

        self.cmd_log_table = QTableWidget(0, 2)
        self.cmd_log_table.setHorizontalHeaderLabels(["Time", "Cmd"])
        self.cmd_log_table.horizontalHeader().setStretchLastSection(True)
        self.cmd_log_table.setSelectionBehavior(QTableWidget.SelectRows)
        self.cmd_log_table.setEditTriggers(QTableWidget.NoEditTriggers)

        self.cmd_log_table.setAlternatingRowColors(True)
        cmd_log_layout.addWidget(self.cmd_log_table)

        right_panel.addWidget(cmd_log_group)
        
        # Create graph panel
        graph_panel = QVBoxLayout()
        graph_panel.setSpacing(10)
        graph_panel.setAlignment(Qt.AlignTop)
        
        # Temperature graph section
        temp_graph_group = QGroupBox("Temperature")
        temp_graph_layout = QVBoxLayout(temp_graph_group)
        
        self.temp_plot = pg.PlotWidget()
        self.temp_plot.setLabel('left', 'Temperature', units='°C')
        self.temp_plot.setLabel('bottom', 'Time', units='s')
        self.temp_plot.showGrid(x=True, y=True)
        self.temp_plot.addLegend()
        self.temp_plot.setYRange(-40, 50, padding=0)
        
        # Create temperature data arrays
        self.max_data_points = 300
        self.time_data = np.zeros(self.max_data_points)
        self.internal_temp_data = np.zeros(self.max_data_points)
        self.last_internal_temp = 0
        
        self.internal_line = self.temp_plot.plot(
            self.time_data, self.internal_temp_data, 
            pen=pg.mkPen('g', width=2), name='Internal'
        )
        
        temp_graph_layout.addWidget(self.temp_plot)
        graph_panel.addWidget(temp_graph_group)
        
        # REPLACE altitude graph with GNSS map
        map_group = QGroupBox("GNSS Position")
        map_layout = QVBoxLayout(map_group)
        
        # Create web view for map
        self.map_view = QWebEngineView()
        
        # Initialize map data
        self.current_lat = 67.8403  # Default to northern Norway (close to your test data)
        self.current_lon = 20.4086
        self.gnss_history = []  # Store position history as [lat, lon] pairs
        self.map_update_counter = 0  # To limit map updates
        
        # Create initial offline map
        self.create_offline_map()
        
        map_layout.addWidget(self.map_view)
        graph_panel.addWidget(map_group)
        
        # Set fixed widths for left and right panels
        left_panel_widget = QWidget()
        left_panel_widget.setLayout(left_panel)
        left_panel_widget.setFixedWidth(500)  

        right_panel_widget = QWidget()
        right_panel_widget.setLayout(right_panel)
        right_panel_widget.setFixedWidth(300)  

        graph_panel_widget = QWidget()
        graph_panel_widget.setLayout(graph_panel)
        graph_panel_widget.setMinimumWidth(600)
        

        content_layout.addWidget(left_panel_widget)
        content_layout.addWidget(right_panel_widget)
        content_layout.addWidget(graph_panel_widget, stretch=2)
        
        # Add content layout to main layout
        main_layout.addLayout(content_layout)
        
        # Remove the timer setup - no more polling!
        # self.timer = QTimer()
        # self.timer.timeout.connect(self.update_display)
        # self.timer.start(1000)  
        
        # Only keep the packet-received signal
        self.packet_received_signal.connect(self.on_packet_received)
        self.telemetry_manager.register_callback(self.callback_update)
        
        # Remove the updating flag - no longer needed
        # self.updating = False

    def on_packet_received(self, packet):
        """Handle packet received signal in main thread - update everything here"""
        self.last_packet_time = pd.Timestamp.now()
        
        # Update specific displays based on packet type
        packet_type = packet.get("type")
        
        if packet_type == "HK":
            # Update HK display
            for key, label in self.hk_labels.items():
                if key in packet:
                    label.setText(str(packet[key]))
            
            # Update temperature graph
            if "rtc" in packet:
                rtc_seconds = rtc_str_to_seconds(packet["rtc"])
                self.update_temperature(packet, rtc_seconds)
            
            # Update GNSS map
            if "gnss" in packet:
                lat, lon = self.parse_gnss_coordinates(packet["gnss"])
                if lat is not None and lon is not None:
                    self.update_gnss_map(lat, lon)
        
        elif packet_type == "BF":
            # Update BF display
            for key, label in self.bf_labels.items():
                if key in packet:
                    label.setText(str(packet[key]))
            
            # Update BF table
            for col in range(4):
                for row, field in enumerate(self.bf_row_names):
                    key = f"{field}{col}"
                    value = packet.get(key, "--")
                    if field in ["addr", "data"]:
                        try:
                            value = hex(int(value))
                        except Exception:
                            pass
                    self.bf_table.setItem(row, col, QTableWidgetItem(str(value)))
        
        elif packet_type == "RAD":
            # Update RAD display
            for key, label in self.rad_labels.items():
                if key == "radiation_size" and "radiation" in packet:
                    data = packet["radiation"]
                    bit_count = len(str(data)) if isinstance(data, str) else len(bin(data)[2:])
                    label.setText(f"{bit_count} bits")
                elif key == "radiation_preview" and "radiation" in packet:
                    data_str = str(packet["radiation"])
                    if len(data_str) > 20:
                        preview = f"{data_str[:10]}...{data_str[-10:]}"
                    else:
                        preview = data_str
                    label.setText(preview)
                elif key in packet:
                    label.setText(str(packet[key]))
        
        elif packet_type == "ACK":
            # Update ACK display
            for key, label in self.ack_labels.items():
                if key in packet:
                    label.setText(str(packet[key]))
        
        # Update packet statistics (every packet)
        self.update_packet_statistics()
        

    def update_packet_statistics(self):
        """Update packet statistics from telemetry manager"""
        packet_stats = self.telemetry_manager.get_packet_stats()
        
        # Update packet type counters
        for packet_type in ["HK", "BF", "ACK", "RAD"]:
            count = self.telemetry_manager.packet_type_counts[packet_type]
            self.packet_counters[packet_type].setText(str(count))
        
        # Update overall statistics
        self.total_packets_label.setText(str(packet_stats["total_received"]))
        self.lost_packets_label.setText(str(packet_stats["lost_packets"]))
        self.corrupt_packets_label.setText(str(packet_stats["corrupt_packets"]))
        self.valid_packets_label.setText(str(packet_stats["valid_packets"]))

    # Remove the old update_display method entirely - no longer needed!
    # def update_display(self):
    #     ...

    def update_gnss_map(self, lat, lon):
        """Update the GNSS map with new position"""
        try:
            # Update current position
            self.current_lat = lat
            self.current_lon = lon
            
            # Add to history (limit to last 50 points to avoid performance issues)
            self.gnss_history.append([lat, lon])
            if len(self.gnss_history) > 50:
                self.gnss_history.pop(0)
            
            # Prepare JavaScript call
            history_js = json.dumps(self.gnss_history)
            js_code = f"if (typeof updatePosition === 'function') {{ updatePosition({lat}, {lon}, {history_js}); }}"
            
            # Execute JavaScript in web view
            self.map_view.page().runJavaScript(js_code)
            
        except Exception as e:
            print(f"Error updating GNSS map: {e}")

    def create_offline_map(self):
        """Create a completely offline Leaflet map using local tiles"""
        # Get absolute path to map tiles
        current_dir = os.path.dirname(os.path.abspath(__file__))
        tiles_dir = os.path.join(os.path.dirname(current_dir), "map_tiles")
        tiles_url = f"file:///{tiles_dir}"
        
        html_content = """
        <!DOCTYPE html>
        <html>
        <head>
            <title>GNSS Position Map</title>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            
            <!-- Include Leaflet CSS and JS locally -->
            <link rel="stylesheet" href="file:///""" + current_dir + """/leaflet/leaflet.css" />
            <script src="file:///""" + current_dir + """/leaflet/leaflet.js"></script>
            
            <style>
                body { margin: 0; padding: 0; }
                #map { width: 100%; height: 100vh; }
                .leaflet-container { background-color: #f0f0f0; }
            </style>
        </head>
        <body>
            <div id="map"></div>
            
            <script>
                var map, currentMarker, flightPath, positionMarkers = [];
                
                // Initialize map 67.887520, 21.082814
                map = L.map('map').setView([67.887520, 21.082814], 10);
                
                // Use local tile layer
                L.tileLayer('""" + tiles_url + """/{z}/{x}/{y}.png', {
                    attribution: 'Local OpenStreetMap tiles',
                    maxZoom: 16,
                    minZoom: 6
                }).addTo(map);
                
                // Function to update position (called from Python)
                window.updatePosition = function(lat, lon, history) {
                    // Remove old current marker
                    if (currentMarker) {
                        map.removeLayer(currentMarker);
                    }
                    
                    // Add new current position marker with custom size
                    var customIcon = L.icon({
                        iconUrl: '""" + current_dir + """/leaflet/images/marker-icon.png',
                        shadowUrl: '""" + current_dir + """/leaflet/images/marker-shadow.png',
                        iconSize: [50, 60],     // size of the icon [width, height]
                        shadowSize: [20, 20],   // size of the shadow
                        iconAnchor: [25, 60],    // point of the icon which will correspond to marker's location
                        shadowAnchor: [6, 20],  // the same for the shadow
                        popupAnchor: [1, -60]   // point from which the popup should open relative to the iconAnchor
                    });
                    
                    currentMarker = L.marker([lat, lon], {icon: customIcon})
                        .addTo(map)
                        .bindPopup('Current Position<br>Lat: ' + lat.toFixed(6) + '<br>Lon: ' + lon.toFixed(6));
                    
                    // Update path
                    if (history && history.length > 1) {
                        // Remove old path
                        if (flightPath) {
                            map.removeLayer(flightPath);
                        }
                        
                        // Add new path
                        flightPath = L.polyline(history, {
                            color: 'blue',
                            weight: 3,
                            opacity: 0.8
                        }).addTo(map);
                        
                        // Clear old position markers
                        positionMarkers.forEach(function(marker) {
                            map.removeLayer(marker);
                        });
                        positionMarkers = [];
                        
                        // Add markers for recent positions (last 5)
                        var recentPositions = history.slice(-5);
                        recentPositions.forEach(function(pos, index) {
                            if (index < recentPositions.length - 1) {
                                var marker = L.circleMarker(pos, {
                                    radius: 4,
                                    fillColor: 'blue',
                                    color: 'darkblue',
                                    weight: 1,
                                    opacity: 1,
                                    fillOpacity: 0.8
                                }).addTo(map);
                                positionMarkers.push(marker);
                            }
                        });
                    }
                };
            </script>
        </body>
        </html>
        """
        
        # Save and load the map
        with tempfile.NamedTemporaryFile(mode='w', suffix='.html', delete=False) as f:
            f.write(html_content)
            self.map_file_path = f.name
            
        self.map_view.load(QUrl.fromLocalFile(self.map_file_path))
    
    def parse_gnss_coordinates(self, gnss_string):
        """Parse GNSS string to extract lat/lon coordinates"""
        try:
            # Data is already parsed as decimal coordinates (lat,lon format)
            gnss_string = gnss_string.rstrip('\x00')
            parts = gnss_string.split(',')
            if len(parts) == 2:
                lat = float(parts[0])
                lon = float(parts[1])
                return lat, lon
        except Exception as e:
            print(f"Error parsing GNSS: {e}")
        
        return None, None
    
    def update_connection_status(self):
        """Update connection status indicator with real-time information"""
        current_time = pd.Timestamp.now()
        
        # Check if we have an active socket connection
        has_connection = (hasattr(self.telemetry_manager, 'uplink_socket') and 
                         self.telemetry_manager.uplink_socket is not None)
        
        if has_connection:
            if self.last_packet_time is None:
                # Connected but no packets yet
                self.status_label.setText("Status: Connected to MCU - Waiting for data...")
                self.status_circle.setStyleSheet("color: orange; font-size: 14px; font-weight: bold;")
            else:
                # Check time since last packet
                time_since_last = (current_time - self.last_packet_time).total_seconds()
                
                if time_since_last <= 5:
                    # Recent data - all good
                    self.status_label.setText(f"Status: Connected - Last packet: {self.last_packet_time.strftime('%H:%M:%S')}")
                    self.status_circle.setStyleSheet("color: green; font-size: 14px; font-weight: bold;")
                elif time_since_last <= self.connection_timeout:
                    # No recent data but still within timeout
                    self.status_label.setText(f"Status: No data for {int(time_since_last)}s")
                    self.status_circle.setStyleSheet("color: orange; font-size: 14px; font-weight: bold;")
                else:
                    # No data for too long - likely connection issues
                    self.status_label.setText(f"Status: Connected but no data for {int(time_since_last)}s")
                    self.status_circle.setStyleSheet("color: red; font-size: 14px; font-weight: bold;")
        else:
            # No socket connection
            self.status_label.setText("Status: Disconnected from MCU")
            self.status_circle.setStyleSheet("color: red; font-size: 14px; font-weight: bold;")

    def update_altitude(self, hk_data, rtc_seconds):
        try:
            # Shift arrays left to remove oldest data point
            self.alt_time_data[:-1] = self.alt_time_data[1:]
            self.alt_data[:-1] = self.alt_data[1:]
            
            # Add new data at the end
            self.alt_time_data[-1] = rtc_seconds
            
            # Add altitude data with fallback to previous value
            if 'altitude' in hk_data:
                self.last_altitude = float(hk_data['altitude'])
            self.alt_data[-1] = self.last_altitude
            
            # Update plot - only show non-zero values (to avoid initial zeros)
            non_zero_indices = np.where(self.alt_time_data > 0)[0]
            if len(non_zero_indices) > 0:
                start_idx = non_zero_indices[0]
                self.alt_line.setData(self.alt_time_data[start_idx:], self.alt_data[start_idx:])
            else:
                # No data yet
                self.alt_line.setData([], [])
        except Exception as e:
            print(f"Error updating altitude graph: {e}")
    
    def update_temperature(self, hk_data, rtc_seconds):
        try:
            # Shift arrays left to remove oldest data point
            self.time_data[:-1] = self.time_data[1:]
            self.internal_temp_data[:-1] = self.internal_temp_data[1:]
            
            # Add new data at the end
            self.time_data[-1] = rtc_seconds
            
            # Add temperature data with fallback to previous values
            if 'internal' in hk_data:
                self.last_internal_temp = float(hk_data['internal'])
            self.internal_temp_data[-1] = self.last_internal_temp
        
            
        
        
            # Update plot data - only show non-zero values (to avoid initial zeros)
            non_zero_indices = np.where(self.time_data > 0)[0]
            if len(non_zero_indices) > 0:
                start_idx = non_zero_indices[0]
                self.internal_line.setData(self.time_data[start_idx:], self.internal_temp_data[start_idx:])
            else:
                # No data yet
                self.internal_line.setData([], [])
        except Exception as e:
            print(f"Error updating temperature graph: {e}")
    
    def callback_update(self, packet):
        """Called when new packet is received - thread-safe signal emission"""
        # Emit signal instead of directly updating GUI
        self.packet_received_signal.emit(packet)
    
    def send_command(self):
        seq = self.uplink_seq_counter
        self.uplink_seq_counter += 1
        rtc = int(pd.Timestamp.now().timestamp()) & 0x1FFFF

        command_type = self.cmd_type_combo.currentText()
        if command_type == "RESET":
            tc_code = TC_RESET
        elif command_type == "CHANGE MODE":
            mode = self.mode_combo.currentText()
            tc_code = TC_SET_MODE_POWER_SAVE if mode == "POWER SAVING" else TC_SET_MODE_NORMAL
        elif command_type == "SEND HELLO":
            tc_code = TC_SEND_HELLO
        elif command_type == "SET RTC":
            tc_code = TC_SET_RTC
        elif command_type == "CLEAR SD":
            tc_code = TC_CLEAR_SD
        elif command_type == "CUT OFF":
            tc_code = TC_CUT_OFF
        else:
            tc_code = 0 

        print(f"Sending telecommand: type={command_type}, code={tc_code}, rtc={rtc}")

        try:
            success = send_telecommand(self.telemetry_manager, seq, tc_code)

            self.log(success)
        except Exception as e:
            print(f"Error sending command: {e}")

        self.log(command_type)
    
    def user_confirm(self):
        command_type = self.cmd_type_combo.currentText()
        if command_type == "CHANGE MODE":
            mode = self.mode_combo.currentText()
            cmd_desc = f"{command_type} to {mode}"
        else:
            cmd_desc = command_type

        msg = QMessageBox(self)
        msg.setIcon(QMessageBox.Question)
        msg.setWindowTitle("Confirm Command")
        msg.setText(f"Are you sure you want to send the following command?\n\n{cmd_desc}")
        msg.setStandardButtons(QMessageBox.Yes | QMessageBox.No)
        result = msg.exec_()

        if result == QMessageBox.Yes:
            self.send_command()

    def log(self, command):
        timestamp = pd.Timestamp.now().strftime('%H:%M:%S')
        
        if command == "CHANGE MODE":
            command_text = f"{command} to {self.mode_combo.currentText()}"
        else:
            command_text = command
        
        self.cmd_log_table.insertRow(0)
        self.cmd_log_table.setItem(0, 0, QTableWidgetItem(timestamp))
        self.cmd_log_table.setItem(0, 1, QTableWidgetItem(command_text))
        
        if self.cmd_log_table.rowCount() > config.MAX_LOG_ENTRIES:
            self.cmd_log_table.removeRow(self.cmd_log_table.rowCount() - 1)

def run(telemetry_manager=None):
    if telemetry_manager is None:
        telemetry_manager = TelemetryManager()
        
    app = QApplication(sys.argv)
    dashboard = Dashboard(telemetry_manager)
    dashboard.show()
    sys.exit(app.exec_())


if __name__ == "__main__":
    run()