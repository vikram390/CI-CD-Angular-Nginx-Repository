#!/bin/bash

# Remove existing application files
sudo rm -rf /var/www/html/*

# Remove Nginx default configuration
sudo rm /etc/nginx/sites-enabled/default

# Create a new Nginx configuration file
sudo tee /etc/nginx/conf.d/angular-app.conf > /dev/null <<EOF
server {
    listen 80;
    root /var/www/html/dist/my-angular-app;
    index index.html index.htm;
    server_name 54.82.54.221;

    location / {
        try_files \$uri \$uri/ /index.html;
    }
}

EOF

# Test Nginx configuration
sudo nginx -t

# Start Nginx service
sudo service nginx start




