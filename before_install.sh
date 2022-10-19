#!bin/bash
cd /home/ubuntu
sudo apt-get update
sudo apt-get install python3-pip python3-dev libpq-dev nginx curl -y
sudo -H pip install --upgrade pip
sudo -H pip install virtualenv
sudo mkdir project
cd project
virtualenv env
source env/bin/activate
