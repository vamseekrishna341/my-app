#!/bin/bash
# Example cleanup or preparation tasks
echo "Running BeforeInstall tasks..."

# Stop the service if it is running
sudo systemctl stop myapp.service

# Remove previous app files (if needed)
rm -rf /var/www/backend/*

# Or perform any other tasks required before installation
