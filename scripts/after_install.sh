#!/bin/bash

# Install Node.js and npm
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Angular CLI globally
sudo npm install -g @angular/cli

# Install project dependencies
cd /var/www/html
npm install

# Build the Angular application
ng build --configuration production




