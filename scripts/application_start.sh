#!/bin/bash

# Navigate to the application directory
cd /var/www/html

# Start the Angular application in the background
nohup npm start > /dev/null 2>&1 &

