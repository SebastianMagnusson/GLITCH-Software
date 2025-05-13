import tkinter as tk
from tkinter import ttk
from tkinter import Text
import threading
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg

class GroundStationGUI:
    def __init__(self, root, ground_station):
        plt.style.use('dark_background')

        self.ground_station = ground_station
        self.root = root
        self.root.title("Ground Station Control")

        # Main layout frames
        # Right panel for OBT, Sensor Values, and Log Text Box
        self.right_panel = ttk.Frame(self.root)
        self.right_panel.pack(side=tk.RIGHT, fill=tk.Y, padx=(5,0), pady=5)

        # OBT Section
        self.obt_frame = ttk.LabelFrame(self.right_panel, text="On-Board Time (OBT)")
        self.obt_frame.pack(side=tk.TOP, fill=tk.X, padx=5, pady=(0,5))
        self.obt_value_label = ttk.Label(self.obt_frame, text="N/A", font=("Helvetica", 12))
        self.obt_value_label.pack(padx=5, pady=5)

        # Sensor Values Section
        self.sensor_values_frame = ttk.LabelFrame(self.right_panel, text="Key Sensor Values")
        self.sensor_values_frame.pack(side=tk.TOP, fill=tk.X, padx=5, pady=5)
        self.sensor_label_1 = ttk.Label(self.sensor_values_frame, text="Sensor 1: N/A")
        self.sensor_label_1.pack(anchor=tk.W, padx=5, pady=2)
        self.sensor_label_2 = ttk.Label(self.sensor_values_frame, text="Sensor 2: N/A")
        self.sensor_label_2.pack(anchor=tk.W, padx=5, pady=2)
        self.sensor_label_3 = ttk.Label(self.sensor_values_frame, text="Temperature: N/A")
        self.sensor_label_3.pack(anchor=tk.W, padx=5, pady=2)

        self.log_console_frame = ttk.LabelFrame(self.right_panel, text="Log Console")
        self.log_console_frame.pack(side=tk.TOP, fill=tk.BOTH, expand=True, padx=5, pady=(5,0))
        
        self.text_box = Text(self.log_console_frame, height=15, width=50)
        self.text_box.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        self.update_text_box("Initializing...\n")

        self.ground_station.set_data_callback(self.update_text_box) # This updates the main log

        # Left panel for graphs and controls
        self.left_panel = ttk.Frame(self.root) 
        self.left_panel.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=(0,5))

        # Control frame in the bottom part of left_panel
        self.control_frame = ttk.Frame(self.left_panel)
        self.control_frame.pack(side=tk.BOTTOM, fill=tk.X, pady=10)


        button_texts = ["SAFE", "RUN", "CONDIFR", "RESTART", "START", "PING", "EXECUTE"]
        self.command_buttons = []
        for text in button_texts:
            button = ttk.Button(self.control_frame, text=text, command=lambda t=text: self.send_command(t))
            button.pack(side=tk.LEFT, padx=3, pady=3, expand=True, fill=tk.X)
            self.command_buttons.append(button)

        self.status_label = ttk.Label(self.control_frame, text="Status: standby")
        self.status_label.pack(side=tk.LEFT, padx=3, pady=3, expand=True, fill=tk.X)

        # Graphs (Canvas) in the remaining top part of left_panel
        self.fig, self.axs = plt.subplots(3, 2, figsize=(15, 15), dpi=30)
        self.fig.tight_layout(pad=5.0)
        #self.fig.patch.set_facecolor('#270025')  #Set the figure background color to GLITCH
        self.axs = self.axs.flatten()  #Flatten the 2D array of axes to a 1D array
        self.lines = [ax.plot([], [], label=f"Sensor {i+1}")[0] for i, ax in enumerate(self.axs)]
        for ax in self.axs:
            #ax.set_facecolor('#270025')  #Set the axes background color to GLITCH
            ax.set_xlabel("Time")
            ax.set_ylabel("Sensor")
            ax.set_xlim(-100, 0)
            ax.set_ylim(0, 100) 
            #ax.legend()
        print("Plots initialized")

        self.canvas = FigureCanvasTkAgg(self.fig, master=self.left_panel) 
        self.canvas.draw()
        self.canvas.get_tk_widget().pack(side=tk.TOP, fill=tk.BOTH, expand=True)

        self.ani = animation.FuncAnimation(self.fig, self.update_plot, interval=1000, cache_frame_data=False)

        if self.ground_station.connected or self.ground_station.test_mode:
            self.data_thread = threading.Thread(target=self.ground_station.receive_sensor_data, daemon=True)
            self.data_thread.start()

    def update_text_box(self, data):
        self.root.after(0, self._update_text_box, data)

    def _update_text_box(self, data):
        self.text_box.insert(tk.END, str(data) + "\n")
        self.text_box.see(tk.END)


    def send_command(self, command):
        """Sends a command to the ground station."""
        # Placeholder: Implement actual command sending to self.ground_station
        print(f"Sending command: {command}")
        # Example: result = self.ground_station.send_command_to_glitch(command) 
        # self.update_text_box(f"Command '{command}' sent. Response: {result}")
        self.status_label.config(text=f"Status: Command '{command}' sent")
        self.update_text_box(f"GUI: Command '{command}' button pressed.")

    # Placeholder methods for updating OBT and Sensor Values
    def update_obt_display(self, obt_time_str):
        self.obt_value_label.config(text=obt_time_str)

    def update_sensor_value_display(self, sensor_id, value_str):
        if sensor_id == 1:
            self.sensor_label_1.config(text=f"Sensor 1: {value_str}")
        elif sensor_id == 2:
            self.sensor_label_2.config(text=f"Sensor 2: {value_str}")
        elif sensor_id == "Temperature": # Example
            self.sensor_label_3.config(text=f"Temperature: {value_str}")

    def update_plot(self, frame):
        for i, ax in enumerate(self.axs):
            ax.clear()
            ax.set_title(f"Live Sensor Data - Sensor {i+1}")
            ax.set_xlabel("Time")
            ax.set_ylabel("Sensor Value")
            ax.set_xlim(-100, 0)
            ax.set_ylim(0, 100)  
            if len(self.ground_station.data_queues[i]) > 1:
                y_data = list(self.ground_station.data_queues[i])
                x_data = list(range(-len(y_data), 0))
                self.lines[i].set_data(x_data, y_data)
                ax.plot(x_data, y_data, label=f"Sensor {i+1}")

            #ax.legend()

        self.canvas.draw()

    def run(self):
        self.root.mainloop()