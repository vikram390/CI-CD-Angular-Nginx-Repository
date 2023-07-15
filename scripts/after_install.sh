#!/bin/bash

# Install Node.js if it's not already installed
command -v node >/dev/null 2>&1 || {
  curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
  sudo apt-get install -y nodejs
}

# Install Angular CLI if it's not already installed
command -v ng >/dev/null 2>&1 || {
  sudo npm install -g @angular/cli
}

# Navigate to the application directory
cd /var/www/html

# Install project dependencies
npm install

# Build the Angular application
ng build --configuration production

# Configure Nginx to serve the Angular application
sudo rm /etc/nginx/sites-enabled/default
sudo cp nginx.conf /etc/nginx/sites-available/angular-app
sudo ln -s /etc/nginx/sites-available/angular-app /etc/nginx/sites-enabled/

# Restart Nginx service
sudo service nginx restart



