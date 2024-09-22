# Https
## My domain
```
healthylife.chickenkiller.com
```
## create crt and key
```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout selfsigned.key -out selfsigned.crt
```
```
sudo systemctl status certbot.timer  // Let's Encrypt certificates are valid for 90 days. Certbot automatically installs a cron job to renew certificates, but you can verify it by running
sudo certbot renew --dry-run  // You can also test the renewal process
```
Copy to your folder
```
sudo cp selfsigned.crt /etc/ssl/certs/
sudo cp selfsigned.key /etc/ssl/private/
```
Restart Nginx to apply the changes
```
sudo systemctl restart nginx
sudo systemctl stop nginx
sudo systemctl start nginx
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