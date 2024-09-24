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
Init status
![image](https://github.com/user-attachments/assets/7869cdfe-2778-4941-825d-fef703be68bd)
Set IP address
![image](https://github.com/user-attachments/assets/b1aecb35-0bfb-4a75-b7ee-70e43b2a1b6d)
or Add Forwarding
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
