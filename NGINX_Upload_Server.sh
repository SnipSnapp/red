sudo mkdir -p /var/www/uploads/SecretUploadDirectory
sudo chown -R www-data:www-data /var/www/uploads/SecretUploadDirectory #Change owner to wwwdata
echo "server {
    listen 9001;
    
    location /SecretUploadDirectory/ {
        root    /var/www/uploads;
        dav_methods PUT;
    }
}" >>upload.conf ##The apache config file (THis is prolly not the right command, but it is the file you want)
sudo ln -s /etc/nginx/sites-available/upload.conf /etc/nginx/sites-enabled/ #symlink site to the site enabled dir
sudo systemctl restart nginx.service #Restart Apache svc.
# Kill nginx config w/ sudo rm /etc/nginx/sites-enabled/default
