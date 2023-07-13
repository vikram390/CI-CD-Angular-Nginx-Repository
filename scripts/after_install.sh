#!/bin/bash

# Navigate to the application directory
cd /home/ubuntu/my-angular-app

# Install project dependencies
npm install

# Build the Angular application
npm run build

# Set file permissions
chown -R www-data:www-data /home/ubuntu/my-angular-app

# Restart Nginx service
service nginx restart

