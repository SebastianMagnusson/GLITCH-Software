import crcmod

# CRC-16-CCITT function (polynomial 0x1021, initial value 0xFFFF)
crc16 = crcmod.mkCrcFun(0x11021, initCrc=0xFFFF, rev=False)

def calculate_crc(data: bytes) -> int:
    return crc16(data)

def validate_crc(data) -> bool:
    crc_received = int.from_bytes(data[-2:], byteorder='big')
    crc_calculated = calculate_crc(data[:-2])
    if crc_received != crc_calculated:
        print(f"CRC mismatch: received {crc_received}, calculated {crc_calculated}")

    return crc_received == crc_calculated

