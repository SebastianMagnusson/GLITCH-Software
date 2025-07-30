import socket
import time
import threading

host = "192.168.4.2"  # ESP32 server IP
port = 8080           # ESP32 server port

def receive_data(sock):
    while True:
        try:
            data = sock.recv(1024)
            if not data:
                print("Server closed the connection.")
                break
            print("Received from server:", data.decode(errors='replace'))
        except socket.error as e:
            print("Receive error:", e)
            break

def send_data(sock):
    counter = 0
    while True:
        try:
            message = f"Hello {counter}"
            sock.send(message.encode())
            print(f"Sent: {message}")
            counter += 1
            time.sleep(2)  # Send every 2 seconds
        except socket.error as e:
            print("Send error:", e)
            break

# Main
client_socket = socket.socket()
try:
    client_socket.connect((host, port))
    print("Connected to server.")

    # Start receive and send threads
    threading.Thread(target=receive_data, args=(client_socket,), daemon=True).start()
    send_data(client_socket)

except KeyboardInterrupt:
    print("\nInterrupted by user.")
except socket.error as e:
    print("Connection error:", e)
finally:
    client_socket.close()
    print("Socket closed.")
