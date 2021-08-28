#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
sudo apt install -y apache2-utils
sudo apt-get -y install python3 python3-pip
sudo pip3 install docker-compose
sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
mkdir npm-stack
cd npm-stack
wget https://raw.githubusercontent.com/virusz4274/myserver/main/docker-stacks/npm-stack/docker-compose.yml
sudo docker-compose up -d
