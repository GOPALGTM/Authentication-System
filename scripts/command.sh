#!bin/bash

cd home/ubuntu/project
sudo systemctl start gunicorn.socket
sudo systemctl enable gunicorn.socket
file /run/gunicorn.sock
sudo journalctl -u gunicorn.socket
curl --unix-socket /run/gunicorn.sock localhost
sudo journalctl -u gunicorn
sudo systemctl daemon-reload
sudo systemctl restart gunicorn
