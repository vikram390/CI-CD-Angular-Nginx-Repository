#!/bin/bash

# Check if the Angular application is running
if pgrep -f "node ./dist"; then
    echo "Angular application is running."
else
    echo "Angular application is not running."
    exit 1
fi

# Check if the application is accessible
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)
if [[ $response -eq 200 ]]; then
    echo "Application is accessible."
else
    echo "Application is not accessible. Response code: $response"
    exit 1
fi

