# Publish Application
## IP address
```
24.13.28.212 车库服务器
9000：thinlinc
129.80.201.9 甲骨文云主机qmf
8888：wechat
129.213.179.136 甲骨文云主机lj
```
```
8072 Capra Trl
DARIEN, IL 60561-5943, United States
```
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
## Netlify Publish
Netlify创建网站和发布
```
Add new site---Import existing project---Github---select reposity-Deploy
Add chatGGPT Key
Domain management---Set Custom domain
Secure your site with HTTPs
Add domain---Add new reocrd
```
Godaddy更改域名服务器
```
dns1.p05.nsone.net
```
## Custom service publish with Dodaddy
![image](https://github.com/user-attachments/assets/7869cdfe-2778-4941-825d-fef703be68bd)
after forwarding
![image](https://github.com/user-attachments/assets/f4ebb199-4d50-43dc-bf23-f80e90b4a0ef)
![image](https://github.com/user-attachments/assets/36cf779f-7d13-4a79-980b-345c08ac2b16)
## Heroku Publish with Dodaddy
![image](https://github.com/user-attachments/assets/e6f53b4e-894a-4050-a7de-e738402286d2)
![image](https://github.com/user-attachments/assets/98db5d50-daca-491e-92e0-193fbae03b41)

## Heroku login
```
# Download the Heroku CLI tarball
curl -L https://cli-assets.heroku.com/heroku-linux-x64.tar.gz -o heroku-linux-x64.tar.gz

# Extract the tarball
tar -xvzf heroku-linux-x64.tar.gz

# Move the Heroku CLI files
sudo mv heroku /usr/local/lib/heroku

# Create a symlink to make heroku globally accessible
sudo ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

# Verify the installation
heroku --version

# Login to Heroku
heroku login
```
## Heroku Publish with docker
```
cd C:/Users/yourusername/yourproject/
heroku container:login
heroku container:push web -a my-heroku-app
heroku container:release web -a my-heroku-app
```
## Heroku Publish without docker
```
create app in heroku --- select github repo
```
Create a Procfile file
```
web: gunicorn your_project_name.wsgi
```
In settings.py
```
MIDDLEWARE --- 'whitenoise.middleware.WhiteNoiseMiddleware',  # Add this line

STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')

# Ensure that Whitenoise serves static files
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

ALLOWED_HOSTS = ['*']  # Not recommended for production
```
In requirements.txt
```
Django==3.2.6
gunicorn==20.1.0
psycopg2==2.9.1
dj-database-url==0.5.0
whitenoise==5.3.0
```
## Visit url
```
curl -k https://10.0.0.181
curl -k https://24.13.28.212
```
Failed to connect 24.13.28.212
```
yum -y install telnet
telnet 24.13.28.212 443
```
## Redirect status codes and characteristics
![image](https://github.com/user-attachments/assets/bfb5ee81-aca3-45d8-a70f-2d1e2e24b033)

