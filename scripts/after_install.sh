#!/bin/bash
apt update
apt upgrade

# Install Node.js and npm
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Angular CLI globally
sudo npm install -g @angular/cli@latest

# Install project dependencies
cd /var/www/html
npm install

# Build the Angular application
ng build --configuration production




