# Docker
## Install Docker
```sh
sudo apt update
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
```
## Install docker-compose
```sh
sudo curl -L "https://github.com/docker/compose/releases/download/v2.21.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
```
## Run
```
docker build . -t nodeapp
docker-compose down
docker-compose up --build
Press CTRL + P followed by CTRL + Q  // Exiting a Docker Container (without stopping it)
```
## Clear Docker Build Cache
```
docker builder prune
```
## Enter Container
```
docker ps
docker attach <container_id_or_name>  // Reattach to the running container
docker exec -it ***容器ID**** bash -l
docker exec -it <django_container_id> /bin/sh
ls
python3 manage.py createsuperuser
```
```
docker-compose restart nginx  // Restart Nginx
sudo ufw allow 443  // Check Firewall Settings
curl -k https://127.0.0.1
curl -k https://your_ip_address
```

## Stop all docker
```
sudo lsof -i :8000
sudo kill <PID>
docker ps -q --filter "expose=8000"
docker stop <container_id>
docker stop $(docker ps -q)
docker rm $(docker ps -a -q) -f
```