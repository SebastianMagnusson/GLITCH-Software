import socket
import time
from bitstring import BitArray
import random

#initial temperatures for all sensors
internal_temp = 24559
external_temp = 13743
sensor_board_temp = 26797

def build_hk_pkt(seq_counter):
    packet = BitArray()

    packet.append("uint:2=0")                 
    packet.append(f"uint:10={seq_counter}")   

    #rtc
    packet.append(f"uint:17={45678 + seq_counter}")

    global internal_temp, external_temp, sensor_board_temp
    random_offset = random.randint(-1, 1)
    internal_temp += random_offset * 100  
    external_temp += random_offset * 100
    sensor_board_temp += random_offset * 100

    # Temperature sensors
    packet.append("int:32=" + str(internal_temp))  
    packet.append("int:32=" + str(external_temp))  
    packet.append("int:32=" + str(sensor_board_temp))  

    #gnss
    packet.append("uint:55=" + str(0x123456789ABCD))

    #alt
    altitude = 100000  
    altitude += random.randint(-100, 100)  
    packet.append("int:24=" + str(altitude))  # 24-bit

    #radiation data
    packet.append("uint:1=1")  

    #crc
    packet.append("uint:16=" + str(0xABCD))

    #padding
    while len(packet) % 8 != 0:
        packet.append("uint:1=0")

    return packet.bytes

def build_bf_pkt(seq_counter):
    packet = BitArray()

    #id
    packet.append("uint:2=1")                 
    packet.append(f"uint:10={seq_counter}")   

    #rtc
    packet.append(f"uint:17={45678 + seq_counter}")

    #bf
    packet.append("uint:172=" + str(0x123456789ABCDEF0123456789ABCDEF0))

    #crc
    packet.append("uint:16=" + str(0xABCD))

    #padding
    while len(packet) % 8 != 0:
        packet.append("uint:1=0") 

    return packet.bytes

def send_packets(ip="127.0.0.1", port=5005):
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    seq_counter = 1

    print(f"Sending HK packets to {ip}:{port}")
    while True:
        hk_packet = build_hk_pkt(seq_counter % 1024)
        #bf_packet = build_mock_bf_packet(seq_counter % 1024)
        sock.sendto(hk_packet, (ip, port))
        #sock.sendto(bf_packet, (ip, port))
        print(f"Sent packet with seq_counter: {seq_counter % 1024}")
        seq_counter += 1
        time.sleep(1)

if __name__ == "__main__":
    send_packets()
