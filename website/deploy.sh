#!/bin/bash

# Navigate to website directory
cd "/website"

# Pull latest changes from GitHub
git pull origin main

# Copy website files to AWS EC2 (replace with your server info)
scp -r * ec2-user@18.168.80.23:/var/www/html/

# Optional: Restart web server on EC2
ssh ec2-user@18.168.80.23 "sudo systemctl restart httpd"

echo "Deployment completed at 02/19/2026 04:58:14"
