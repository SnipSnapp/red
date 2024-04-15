php -r 'const BUFFER = 1024; $fremote = 
fopen("https://<URL/IP>/<FILE>", "rb"); $flocal = fopen("<FILE>", "wb"); while ($buffer = fread($fremote, BUFFER)) { fwrite($flocal, $buffer); } fclose($flocal); fclose($fremote);'
