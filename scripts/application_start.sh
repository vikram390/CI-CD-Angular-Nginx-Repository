#!/bin/bash

# Navigate to the application directory
cd /home/ubuntu

# Start the Angular application in the background
nohup npm start > /dev/null 2>&1 &

