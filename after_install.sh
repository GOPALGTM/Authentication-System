#1bin/bash
cd /opt/codedeploy-agent/deployment-root/7a99d5e3-5b94-4a82-81dc-95e570fb937d/d-709YAG9M8/deployment-archive
virtualenv -p python3 venv
source venv/bin/activate
pip install -r requirements.txt
python3 manage.py migrate
sudo ufw allow 8000
python3 manage.py runserver 0.0.0.0:8000
