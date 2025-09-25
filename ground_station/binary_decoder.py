#!/usr/bin/env python3
import argparse
import csv
import os
import struct
from datetime import timedelta

from receiver.packet_parser import parse
from receiver.packet_structures import PACKET_PARSERS

# .LOG header layout (little-endian):
# uint8  packet_type
# uint64 timestamp_us
# uint32 packet_len
# uint32 seq_num
HEADER_FMT = "<BQII"
HEADER_SIZE = struct.calcsize(HEADER_FMT)

TYPE_NAMES = {0: "HK", 1: "BF", 2: "RAD", 3: "ACK"}

# Header columns must come first in CSV
HEADER_KEYS = [
    "file", "index", "type_id", "type",
    "seq", "time_us", "time_s", "time_hms",
    "length", "offset_header", "packet_bin"  # <-- Add here
]

def parsed_field_order_for_type(pkt_type: int):
    """Order parsed columns according to PACKET_PARSERS (excluding 'crc')."""
    cfg = PACKET_PARSERS.get(pkt_type, {})
    fields = cfg.get("fields", [])
    ordered = []
    for f in fields:
        if not isinstance(f, (list, tuple)) or not f:
            continue
        name = f[0]
        if name and name.lower() != "crc":
            ordered.append(name)
    return ordered

def collect_files(paths):
    files = []
    for p in paths:
        if os.path.isdir(p):
            for name in sorted(os.listdir(p)):
                if name.upper().endswith(".LOG"):
                    files.append(os.path.join(p, name))
        else:
            files.append(p)
    return files

def main():
    ap = argparse.ArgumentParser(description="Parse GLITCH .LOG files and decode packets (header columns first).")
    ap.add_argument("paths", nargs="+", help="One or more .LOG files or directories")
    ap.add_argument("-o", "--out", default="glitch_packets_parsed.csv", help="CSV output file")
    args = ap.parse_args()

    files = collect_files(args.paths)
    if not files:
        print("No .LOG files found.")
        return

    rows = []
    parsed_cols_order = []
    seen_cols = set()

    for fp in files:
        with open(fp, "rb") as f:
            offset = 0
            idx = 0
            while True:
                hdr = f.read(HEADER_SIZE)
                if not hdr:
                    break
                if len(hdr) < HEADER_SIZE:
                    # Incomplete header at end — stop
                    break

                packet_type, timestamp_us, packet_len, seq_num = struct.unpack(HEADER_FMT, hdr)
                offset_header = offset
                offset += HEADER_SIZE

                payload = f.read(packet_len)
                if len(payload) < packet_len:
                    # Truncated payload — stop
                    break
                offset += packet_len

                # Combine header and payload for full packet
                full_packet = hdr + payload
                packet_bin_str = ''.join(f'{byte:08b}' for byte in full_packet)

                # Decode with your parser
                try:
                    parsed = parse(payload) or {}
                except Exception as e:
                    parsed = {"parse_error": str(e)}

                # Track parsed column order per type
                for col in parsed_field_order_for_type(packet_type):
                    if col not in seen_cols:
                        parsed_cols_order.append(col)
                        seen_cols.add(col)

                # Include any unexpected keys (e.g., parse_error) after the defined ones
                for col in parsed.keys():
                    if col not in seen_cols and col not in HEADER_KEYS:
                        parsed_cols_order.append(col)
                        seen_cols.add(col)

                t_s = timestamp_us / 1_000_000.0
                row = {
                    "file": os.path.basename(fp),
                    "index": idx,
                    "type_id": packet_type,
                    "type": TYPE_NAMES.get(packet_type, f"T{packet_type}"),
                    "seq": seq_num,
                    "time_us": timestamp_us,
                    "time_s": f"{t_s:.6f}",
                    "time_hms": str(timedelta(seconds=t_s)),
                    "length": packet_len,
                    "offset_header": offset_header,
                    "packet_bin": packet_bin_str,  # <-- Add this line
                }
                row.update(parsed)
                rows.append(row)
                idx += 1

    fieldnames = HEADER_KEYS + parsed_cols_order
    with open(args.out, "w", newline="") as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for r in rows:
            writer.writerow(r)

    print(f"Wrote CSV to {args.out}")

if __name__ == "__main__":
    main()
