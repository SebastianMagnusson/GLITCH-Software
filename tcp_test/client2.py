import socket

host = "192.168.4.2" # Have to change this to the server's IP address 
# and make sure the pc uses the same netmask and gateway (see in ipconfig and change in network settings, 
# should be undefined if not connected via ethernet except for the esp32)
port = 8080  # socket server port number

client_socket = socket.socket()  # instantiate
client_socket.setblocking(False)
try:
    client_socket.connect((host, port))  # connect to the server
except BlockingIOError:
    print("Connection in progress...")
    pass

message = input(" -> ")  # take input

while message.lower().strip() != 'bye':
    client_socket.send(message.encode())  # send message
    data = client_socket.recv(1024).decode()  # receive response

    print('Received from server: ' + data)  # show in terminal

    message = input(" -> ")  # again take input

client_socket.close()  # close the connection
