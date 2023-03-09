#!bin/bash

cd home/ubuntu/project
sudo ln -s /etc/nginx/sites-available/myproject /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl restart nginx
sudo ufw delete allow 8000
sudo ufw allow 'Nginx Full'
