#!/bin/sh

set -e

echo Setup Docker swarm mode

sudo apt install -y \
 apt-transport-https \
 ca-certificates \
 curl \
 gnupg-agent \
 software-properties-common -y

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
 "deb [arch=arm64] https://download.docker.com/linux/debian \
 $(lsb_release -cs) \
 stable"

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y

sudo usermod -aG docker rock

sudo systemctl enable docker
sudo docker swarm init --advertise-addr eth0
