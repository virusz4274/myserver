#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
sudo apt install -y apache2-utils
sudo apt-get -y install python3 python3-pip
sudo pip3 install docker-compose
mkdir npm-stack
cd npm-stack
wget https://raw.githubusercontent.com/virusz4274/myserver/main/docker-stacks/npm-stack/docker-compose.yml
sudo docker-compose up -d
