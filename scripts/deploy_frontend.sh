#!/bin/bash

# Define EC2 connection details
EC2_USER="ec2-user"              # For Amazon Linux or RHEL-based EC2 instances, use "ubuntu" for Ubuntu-based instances
EC2_IP="ec2-10-20-3-207.compute-1.amazonaws.com"  # Replace with your EC2 instance's public IP or DNS name
EC2_KEY_PATH="C:\Users\Agssysadmin\Downloads\vk.pem"  # Path to your EC2 instance's SSH private key (use the .pem file you downloaded when creating the instance)
EC2_DEST_DIR="/var/www/html"     # Directory on EC2 where the frontend files will be deployed (commonly used with web servers like Apache/Nginx)

# Sync the React build directory to EC2 instance using rsync
echo "Deploying frontend to EC2"
rsync -avz -e "ssh -i $EC2_KEY_PATH" ./frontend/build/ $EC2_USER@$EC2_IP:$EC2_DEST_DIR

# Alternatively, you can use scp to copy the build files
# scp -i $EC2_KEY_PATH -r ./frontend/build/ $EC2_USER@$EC2_IP:$EC2_DEST_DIR
