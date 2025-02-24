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

        self.text_box = Text(root, height=20, width=50)
        self.text_box.pack(side=tk.RIGHT, fill=tk.BOTH, expand=True)
        self.update_text_box("Initializing...\n")

        self.ground_station.set_data_callback(self.update_text_box)

        self.mode_label = ttk.Label(root, text="Select Mode:")
        self.mode_label.pack()

        self.mode_var = tk.StringVar(value="standby")
        self.mode_dropdown = ttk.Combobox(root, textvariable=self.mode_var, values=["standby", "operational"])
        self.mode_dropdown.pack()

        self.switch_button = ttk.Button(root, text="Switch Mode", command=self.switch_mode)
        self.switch_button.pack()

        self.status_label = ttk.Label(root, text="Status: standby")
        self.status_label.pack()

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
            ax.set_ylim(0, 100)  #Adjust as needed for your data range
            #ax.legend()
        print("Plots initialized")

        self.canvas = FigureCanvasTkAgg(self.fig, master=root)
        self.canvas.draw()
        self.canvas.get_tk_widget().pack(side=tk.TOP, fill=tk.BOTH, expand=1)

        self.ani = animation.FuncAnimation(self.fig, self.update_plot, interval=1000, cache_frame_data=False)

        if self.ground_station.connected or self.ground_station.test_mode:
            self.data_thread = threading.Thread(target=self.ground_station.receive_sensor_data, daemon=True)
            self.data_thread.start()

    def update_text_box(self, data):
        self.root.after(0, self._update_text_box, data)

    def _update_text_box(self, data):
        self.text_box.insert(tk.END, str(data) + "\n")
        self.text_box.see(tk.END)

    def switch_mode(self):
        mode = self.mode_var.get().strip().lower()
        result = self.ground_station.switch_mode(mode)
        self.status_label.config(text=f"Status: {result}")

    def update_plot(self, frame):
        for i, ax in enumerate(self.axs):
            ax.clear()
            ax.set_title(f"Live Sensor Data - Sensor {i+1}")
            ax.set_xlabel("Time")
            ax.set_ylabel("Sensor Value")
            ax.set_xlim(-100, 0)
            ax.set_ylim(0, 100)  #Adjust as needed for your data range

            if len(self.ground_station.data_queues[i]) > 1:
                y_data = list(self.ground_station.data_queues[i])
                x_data = list(range(-len(y_data), 0))
                self.lines[i].set_data(x_data, y_data)
                ax.plot(x_data, y_data, label=f"Sensor {i+1}")

            #ax.legend()

        self.canvas.draw()

    def run(self):
        self.root.mainloop()