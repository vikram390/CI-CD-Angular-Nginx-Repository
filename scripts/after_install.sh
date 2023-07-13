#!/bin/bash

# Navigate to the application directory
cd /var/www/html

# Install project dependencies
npm install

# Build the Angular application
npm run build

# Set ownership and permissions for Nginx
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Configure Nginx to serve the Angular application
rm /etc/nginx/sites-enabled/default
cp nginx.conf /etc/nginx/sites-available/angular-app
ln -s /etc/nginx/sites-available/angular-app /etc/nginx/sites-enabled/

# Restart Nginx service
service nginx restart


