
# Centos
## Config
do this after installation:
```
cd /etc/yum.repos.d/
sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
```
```
sudo nano /etc/sudoers
user_name ALL=(ALL)  ALL
sudo usermod -a -G wheel lj
```
```
sudo dnf install python3-librepo -y
sudo yum updatepo -y
sudo yum install -y yum-utils
```
## Install Docker
```
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker
docker --version
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
## Install Node.js and npm
```
curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo yum install -y nodejs
node -v
npm -v
```
## Install Git
```
sudo yum install -y git
git --version
```
## Install Python and pip and Django
```
sudo yum install -y python3
python3 --version
sudo yum install -y python3-pip
pip3 --version
sudo pip3 install django
django-admin --version
```
