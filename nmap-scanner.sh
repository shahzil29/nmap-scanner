#!/bin/bash

# Define your subnet (you can also prompt for it)
SUBNET="10.0.2.0/24"

# Output file with timestamp
OUTFILE="nmap_scan_$(date +%F_%H-%M).txt"

# Start scan
echo "[*] Scanning subnet: $SUBNET"
echo "[*] Output will be saved to: $OUTFILE"

nmap -sS -sV -O -T4 "$SUBNET" -oN "$OUTFILE"

echo "[✔] Scan complete. Results saved in $OUTFILE"
