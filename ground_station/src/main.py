from station import GroundStation
from gui import GroundStationGUI
import tkinter as tk
import os

def main():
    #Suppress Tkinter deprecation warning
    os.environ['TK_SILENCE_DEPRECATION'] = '1'
    
    test_mode = True  #FALSE BEFORE FLIGHT
    ground_station = GroundStation(ip="0", port=0, test_mode=test_mode)  #Replace with actual IP and port
    
    root = tk.Tk()
    #root.configure(bg='#270025')  #Set the background color to glitch
    gui = GroundStationGUI(root, ground_station)
    root.mainloop()

if __name__ == "__main__":
    main()