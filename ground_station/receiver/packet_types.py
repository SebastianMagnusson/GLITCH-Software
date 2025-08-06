from enum import IntEnum
from dataclasses import dataclass
import struct
from bitstring import BitStream
from utils import convert_temp

class PacketType(IntEnum):
    """Packet type constants (downlink 2-bit IDs)"""
    HK = 0b00   # Housekeeping
    BF = 0b01   # Bit Flip
    RAD = 0b10  # Radiation
    ACK = 0b11  # Acknowledgment

@dataclass
class HousekeepingPacket:
    """Housekeeping telemetry packet"""
    seq_counter: int
    rtc: int
    internal: float
    external: float
    sensor_board: float
    gnss: int
    altitude: int
    crc: int

    @classmethod
    def from_bitstream(cls, bits: BitStream) -> "HousekeepingPacket":
        """Parse from bitstream (since your packets aren't byte-aligned)"""
        seq_counter = bits.read('uint:16')
        rtc = bits.read('uint:17')
        internal_raw = bits.read('uint:32')
        external_raw = bits.read('uint:32')
        sensor_board_raw = bits.read('uint:32')
        gnss = bits.read('uint:55')
        altitude = bits.read('int:48')
        crc = bits.read('uint:16')
        
        return cls(
            seq_counter=seq_counter,
            rtc=rtc,
            internal=convert_temp(internal_raw),
            external=convert_temp(external_raw),
            sensor_board=convert_temp(sensor_board_raw),
            gnss=gnss,
            altitude=altitude,
            crc=crc
        )

@dataclass
class BitFlipPacket:
    """Bit flip experiment packet"""
    seq_counter: int
    rtc: int
    bit_flip: int
    crc: int

    @classmethod
    def from_bitstream(cls, bits: BitStream) -> "BitFlipPacket":
        seq_counter = bits.read('uint:16')
        rtc = bits.read('uint:17')
        bit_flip = bits.read('uint:172')
        crc = bits.read('uint:16')
        
        return cls(
            seq_counter=seq_counter,
            rtc=rtc,
            bit_flip=bit_flip,
            crc=crc
        )

@dataclass
class AckPacket:
    """Acknowledgment packet"""
    seq_counter: int
    rtc: int
    telecommand_ack: int
    crc: int

    @classmethod
    def from_bitstream(cls, bits: BitStream) -> "AckPacket":
        seq_counter = bits.read('uint:16')
        rtc = bits.read('uint:17')
        telecommand_ack = bits.read('uint:3')
        crc = bits.read('uint:16')
        
        return cls(
            seq_counter=seq_counter,
            rtc=rtc,
            telecommand_ack=telecommand_ack,
            crc=crc
        )

@dataclass
class RadiationPacket:
    """Radiation measurement packet"""
    seq_counter: int
    rtc: int
    radiation: int
    crc: int

    @classmethod
    def from_bitstream(cls, bits: BitStream) -> "RadiationPacket":
        seq_counter = bits.read('uint:16')
        rtc = bits.read('uint:17')
        radiation = bits.read('uint:9984')
        crc = bits.read('uint:16')
        
        return cls(
            seq_counter=seq_counter,
            rtc=rtc,
            radiation=radiation,
            crc=crc
        )