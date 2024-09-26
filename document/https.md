# Https
## My domain
```
healthylife.chickenkiller.com
onlinetools.life
shopforself.fun
```
## create crt and key
```
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout selfsigned.key -out selfsigned.crt
```
Copy to your folder
```
sudo cp selfsigned.crt /etc/ssl/certs/
sudo cp selfsigned.key /etc/ssl/private/
```

## Let's Encrypt
```
sudo apt update
sudo apt install certbot
```
```
sudo yum install epel-release
sudo yum install certbot
```
```
sudo certbot certonly --standalone -d onlinetools.life -d www.onlinetools.life
ls /etc/letsencrypt/live/yourdomain.com/
```
```
ssl_certificate /etc/letsencrypt/live/yourdomain.com/fullchain.pem;
ssl_certificate_key /etc/letsencrypt/live/yourdomain.com/privkey.pem;
```
```
sudo crontab -e  //  To automatically renew your certificates
0 */12 * * * certbot renew --quiet  // run the renewal command twice a day
```
```
sudo systemctl status certbot.timer  // Let's Encrypt certificates are valid for 90 days. Certbot automatically installs a cron job to renew certificates, but you can verify it by running
sudo certbot renew --dry-run  // You can also test the renewal process
```
## Check Domain Configuration
```
nslookup yourdomain.com
```
For ubunto
```
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
```
For centos
```
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --zone=public --add-port=443/tcp --permanent
sudo firewall-cmd --reload
```
Ensure No Other Web Server is Running
```
sudo systemctl stop nginx  # For Nginx
sudo systemctl stop apache2  # For Apache
```
## Nginx
```
sudo yum install epel-release
sudo yum install nginx
sudo systemctl -l enable nginx
sudo systemctl -l start nginx
sudo systemctl -l stop nginx
```
Restart Nginx to apply the changes
```
sudo fuser -k 80/tcp
sudo fuser -k 443/tcp
sudo nginx -t
sudo systemctl status nginx
sudo systemctl reload nginx
sudo systemctl restart nginx
sudo systemctl stop nginx
sudo systemctl start nginx
```
```
sudo nano /var/log/nginx/error.log  // 98: Address already in use
yum install net-tools
sudo netstat -tulpn
sudo kill -2 <PID>
sudo fuser -k 80/tcp
sudo fuser -k 443/tcp
sudo service nginx restart
```
## https authentication
```
sudo systemctl restart nginx
sudo systemctl restart gunicorn
gunicorn --bind 127.0.0.1:8000 pwa_project.wsgi:application
```
## Check file permissions
```
ls -l /etc/nginx/ssl/nginx-selfsigned.crt /etc/nginx/ssl/nginx-selfsigned.key
ls -l selfsigned.crt selfsigned.key
```
If the permissions are incorrect, fix them with the following command:
```
sudo chmod 644 /etc/nginx/ssl/nginx-selfsigned.crt
sudo chmod 600 /etc/nginx/ssl/nginx-selfsigned.key
```
Also, ensure that the Nginx user (www-data or nginx) has permission
```
sudo chmod 755 /etc/nginx/ssl/
```
## Verify Certificate File Integrity
```
openssl x509 -in /etc/nginx/ssl/nginx-selfsigned.crt -noout -text
openssl rsa -in /etc/nginx/ssl/nginx-selfsigned.key -check
```
## Restart Nginx
```
sudo nginx -t
sudo systemctl restart nginx
```
## Enable UFW
```
sudo ufw enable
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw status
```
