#1bin/bash

sudo mkdir project
cd project
virtualenv env
source env/bin/activate
cd Authentication-System
pip install django gunicorn
sudo ufw allow 8000
python3 manage.py runserver
