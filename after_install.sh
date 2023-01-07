#1bin/bash
virtualenv -p python3 venv
source venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
sudo ufw allow 8000
python3 manage.py runserver 0.0.0.0:8000
