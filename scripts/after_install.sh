#!/bin/bash

# Navigate to the application directory
cd /var/www/html

# Install project dependencies
npm install

# Build the Angular application
ng build --configuration production

# Set file permissions
chown -R www-data:www-data /var/www/html

# Restart Nginx service
service nginx restart

