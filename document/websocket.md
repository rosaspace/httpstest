
## Websocket
```
pip install djangorestframework
pip install --upgrade django==4.2.0 // 升级django
```
## Run daphne
```
pip install django channels daphne channels-redis
daphne -p 8000 capstone.asgi:application
```
```
daphne -b 0.0.0.0 -p 8000 capstone.asgi:application
python manage.py runserver 0.0.0.0:8000
```
```
sudo systemctl status daphne
sudo systemctl restart daphne
sudo journalctl -u daphne -f
```
## Stop ports
```
sudo lsof -i :8000
sudo kill <PID>
sudo kill -9 $(sudo lsof -t -i :443)  // Kill all 446 ports
```
## Start redis
```
sudo service redis-server start
sudo service redis-server restart
sudo service redis-server stop
ip addr show eth0
redis-cli ping	 // 成功显示PONG
```
In settings.py
```
# "hosts": [("redis", 6379)],
"hosts": [('127.0.0.1', 6379)],
```
## Stop redis
```
sudo lsof -i :6379
sudo kill <PID>
docker ps -q --filter "expose=6379"
docker stop <container_id>
netstat -tuln | grep 6379  // Ensure Port 8000 is Free
```
## check posr in use
```
sudo lsof -i -P -n | grep LISTEN  // ports in use
sudo netstat -tulpn | grep LISTEN  // user id
sudo ss -tulpn | grep LISTEN  // user name
sudo lsof -i:22  // see a specific port
```
## Install channels
```
sudo systemctl restart nginx
sudo systemctl restart gunicorn
gunicorn --bind 127.0.0.1:8000 pwa_project.wsgi:application
openssl x509 -in /etc/nginx/ssl/nginx-selfsigned.crt -noout -text
openssl rsa -in /etc/nginx/ssl/nginx-selfsigned.key -check
```
## Requirements.txt
```
pip freeze > requirements.txt
// recreate the environment on another machine
pip install -r requirements.txt
```
## Run Background
```
screen -S photo
screen -r photo
screen -ls
ctl_a d
```
