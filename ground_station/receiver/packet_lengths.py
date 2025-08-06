# Actual packet sizes WITHOUT padding (ID + Seq + RTC + Data + CRC)
PACKET_SIZE_HK = 2 + 16 + 17 + 96 + 55 + 48 + 16   # 250 bits total
PACKET_SIZE_BF = 2 + 16 + 17 + 172 + 16         # 223 bits total  
PACKET_SIZE_ACK = 2 + 16 + 17 + 3 + 16          # 54 bits total
PACKET_SIZE_RAD = 2 + 16 + 17 + 9984 + 16       # 10035 bits total