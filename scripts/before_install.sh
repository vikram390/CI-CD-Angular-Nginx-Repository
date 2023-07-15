#!/bin/bash

# Update the system packages
apt update
apt upgrade -y

# Install Node.js
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt-get install -y nodejs

# Install Nginx
apt-get install -y nginx

# Stop Nginx service if it's running
service nginx stop

# Remove the default Nginx configuration file
rm /etc/nginx/sites-enabled/default

# Create a new Nginx configuration file for your Angular application
cat >/etc/nginx/sites-available/angular-app <<EOL
server {
        listen 80;
        listen [::]:80;

        server_name 107.23.237.58;

        root /var/www/html;
        index index.html;

        location / {
                try_files $uri $uri/ /index.html;
    }
}
EOL

# Enable the Nginx configuration by creating a symbolic link
ln -s /etc/nginx/sites-available/angular-app /etc/nginx/sites-enabled/

# Restart Nginx service
service nginx restart


