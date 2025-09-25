import sys
import os
import pandas as pd
import numpy as np
import pyqtgraph as pg
from PyQt5.QtWidgets import (QApplication, QMainWindow, QWidget, 
                            QVBoxLayout, QHBoxLayout, QLabel, QTableWidget, 
                            QTableWidgetItem, QPushButton, QGroupBox, QComboBox,
                            QFrame, QHeaderView)
from PyQt5.QtCore import Qt, QTimer
from telemetry.telemetry_manager import TelemetryManager
from uplink.uplink_sender import send_telecommand
from uplink.tc_types import TC_RESET, TC_SET_MODE_POWER_SAVE, TC_SET_MODE_NORMAL, TC_SEND_HELLO, TC_SET_RTC, TC_CLEAR_SD, TC_CUT_OFF
from PyQt5.QtWidgets import QMessageBox
import config
from utils import rtc_str_to_seconds

class Dashboard(QMainWindow):
    def __init__(self, telemetry_manager):
        super().__init__()
        
        self.uplink_seq_counter = 0
        self.last_packet_time = None  
        
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
            ("External Temp", "external"),
            ("GNSS", "gnss"),
            ("Altitude", "altitude"),
            ("Radiation", "radiation")
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
        self.cmd_type_combo.addItems(["RESET", "CHANGE MODE","SEND HELLO","SET RTC","CLEAR SD","CUTOFF"])
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
        
        # Create temperature data arrays
        self.max_data_points = 300  # 5 minutes at 1 sample per second
        
        # Use fixed-size arrays for temperature graph
        self.time_data = np.zeros(self.max_data_points)
        self.internal_temp_data = np.zeros(self.max_data_points)
        self.external_temp_data = np.zeros(self.max_data_points)
        
        # Use fixed-size arrays for altitude graph
        self.alt_time_data = np.zeros(self.max_data_points)
        self.alt_data = np.zeros(self.max_data_points)
        
        # Track previous values for missing data points
        self.last_internal_temp = 0
        self.last_external_temp = 0
        self.last_altitude = 0

        
        self.internal_line = self.temp_plot.plot(
            self.time_data, self.internal_temp_data, 
            pen=pg.mkPen('r', width=2), name='Internal'
        )
        self.external_line = self.temp_plot.plot(
            self.time_data, self.external_temp_data, 
            pen=pg.mkPen('g', width=2), name='External'
        )
        
        
        temp_graph_layout.addWidget(self.temp_plot)
        graph_panel.addWidget(temp_graph_group)
        
        # Altitude graph section
        alt_graph_group = QGroupBox("Altitude")
        alt_graph_layout = QVBoxLayout(alt_graph_group)
        
        self.alt_plot = pg.PlotWidget()
        self.alt_plot.setLabel('left', 'Altitude', units='m')
        self.alt_plot.setLabel('bottom', 'Time', units='s')
        self.alt_plot.showGrid(x=True, y=True)
        
        self.alt_line = self.alt_plot.plot(
            [], [], # Start with empty data
            pen=pg.mkPen('c', width=2), name='Altitude'
        )
        
        self.alt_line = self.alt_plot.plot(
            self.alt_time_data, self.alt_data, 
            pen=pg.mkPen('c', width=2), name='Altitude'
        )
        
        alt_graph_layout.addWidget(self.alt_plot)
        graph_panel.addWidget(alt_graph_group)
        

        # Set fixed widths for left and right panels
        left_panel_widget = QWidget()
        left_panel_widget.setLayout(left_panel)
        left_panel_widget.setFixedWidth(500)  # Set your desired width

        right_panel_widget = QWidget()
        right_panel_widget.setLayout(right_panel)
        right_panel_widget.setFixedWidth(300)  # Set your desired width

        graph_panel_widget = QWidget()
        graph_panel_widget.setLayout(graph_panel)
        graph_panel_widget.setMinimumWidth(600)
        # No fixed width, will expand

        

        content_layout.addWidget(left_panel_widget)
        content_layout.addWidget(right_panel_widget)
        content_layout.addWidget(graph_panel_widget, stretch=2)
        
        # Add content layout to main layout
        main_layout.addLayout(content_layout)
        
        # Setup refresh timer
        self.timer = QTimer()
        self.timer.timeout.connect(self.update_display)
        self.timer.start(1000)
                
        self.max_data_points = config.MAX_DATA_POINTS_GRAPH
        
        self.connection_timeout = config.CONNECTION_TIMEOUT
    
        # Register callback after all attributes are initialized
        self.telemetry_manager.register_callback(self.callback_update)
    
    def update_display(self):
        # Update HK
        hk_data = self.telemetry_manager.current_data["HK"]
        for key, label in self.hk_labels.items():
            if key in hk_data:
                label.setText(str(hk_data[key]))
        
        # Update BF Tot and Now
        bf_data = self.telemetry_manager.current_data["BF"]
        for key, label in self.bf_labels.items():
            if key in bf_data:
                label.setText(str(bf_data[key]))

        # Update BF Table
        for col in range(4):
            for row, field in enumerate(self.bf_row_names):
                key = f"{field}{col}"
                value = bf_data.get(key, "--")
                # Show addr/data in hex, others as int
                if field in ["addr", "data"]:
                    try:
                        value = hex(int(value))
                    except Exception:
                        pass
                self.bf_table.setItem(row, col, QTableWidgetItem(str(value)))

        # Update RAD - Show statistics instead of raw data
        rad_data = self.telemetry_manager.current_data["RAD"]
        for key, label in self.rad_labels.items():
            if key in rad_data:
                if key == "radiation":
                    # Skip - we'll handle this separately
                    continue
                elif key == "radiation_size":
                    # Show bit count
                    if "radiation" in rad_data:
                        bit_count = len(str(rad_data["radiation"])) if isinstance(rad_data["radiation"], str) else len(bin(rad_data["radiation"])[2:])
                        label.setText(f"{bit_count} bits")
                    else:
                        label.setText("--")
                elif key == "radiation_preview":
                    # Show first/last few characters
                    if "radiation" in rad_data:
                        data_str = str(rad_data["radiation"])
                        if len(data_str) > 20:
                            preview = f"{data_str[:10]}...{data_str[-10:]}"
                        else:
                            preview = data_str
                        label.setText(preview)
                    else:
                        label.setText("--")
                else:
                    label.setText(str(rad_data[key]))

        # Update ACK
        ack_data = self.telemetry_manager.current_data["ACK"]
        for key, label in self.ack_labels.items():
            if key in ack_data:
                label.setText(str(ack_data[key]))
        
        # Update packet counters using statistics from telemetry manager
        packet_stats = self.telemetry_manager.get_packet_stats()
        
        # Update packet type counters
        total_valid_packets = 0
        for packet_type in ["HK", "BF", "ACK", "RAD"]:
            count = self.telemetry_manager.packet_type_counts[packet_type]
            self.packet_counters[packet_type].setText(str(count))
            total_valid_packets += count
        
        # Update overall statistics
        self.total_packets_label.setText(str(packet_stats["total_received"]))
        self.lost_packets_label.setText(str(packet_stats["lost_packets"]))
        self.corrupt_packets_label.setText(str(packet_stats["corrupt_packets"]))
        self.valid_packets_label.setText(str(packet_stats["valid_packets"]))
        
        # Update graphs
        if hk_data and "rtc" in hk_data:
            rtc_seconds = rtc_str_to_seconds(hk_data["rtc"])
            self.update_temperature(hk_data, rtc_seconds)
            self.update_altitude(hk_data, rtc_seconds)

        # Update connection status
        self.update_connection_status()
    
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
                    self.status_label.setText(f"Status: Connected - No data for {int(time_since_last)}s")
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
    
    def update_temperature(self, hk_data, rtc_seconds):
        # Shift arrays left to remove oldest data point
        self.time_data[:-1] = self.time_data[1:]
        self.internal_temp_data[:-1] = self.internal_temp_data[1:]
        self.external_temp_data[:-1] = self.external_temp_data[1:]
        
        # Add new data at the end
        self.time_data[-1] = rtc_seconds
        
        # Add temperature data with fallback to previous values
        if 'internal' in hk_data:
            self.last_internal_temp = float(hk_data['internal'])
        self.internal_temp_data[-1] = self.last_internal_temp
    
        if 'external' in hk_data:
            self.last_external_temp = float(hk_data['external'])
        self.external_temp_data[-1] = self.last_external_temp
    
    
        # Update plot data - only show non-zero values (to avoid initial zeros)
        non_zero_indices = np.where(self.time_data > 0)[0]
        if len(non_zero_indices) > 0:
            start_idx = non_zero_indices[0]
            self.internal_line.setData(self.time_data[start_idx:], self.internal_temp_data[start_idx:])
            self.external_line.setData(self.time_data[start_idx:], self.external_temp_data[start_idx:])
        else:
            # No data yet
            self.internal_line.setData([], [])
            self.external_line.setData([], [])
    
    def callback_update(self, packet):
        """Called when new packet is received"""
        self.last_packet_time = pd.Timestamp.now()
        self.update_display()

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
        elif command_type == "SAY HELLO":
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