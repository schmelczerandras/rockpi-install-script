#!/bin/sh

set -e

# The target of the script should be a RockPi S with Debian 10 installed.
# https://wiki.radxa.com/RockpiS/Debian


# Change these
DOMAIN_NAME=schmelczer.ml
EMAIL="schmelczerandras@gmail.com"
PASSWORD="change-me"; 
#

sudo echo -e "$PASSWORD\n$PASSWORD" | passwd rock

# Wait for NTP
sleep 30s

echo Installing packages
sudo apt update
sudo apt upgrade -y
sudo apt install -y $(grep -vE "^\s*#" packages.list | tr "\n" " ")

echo Running setups

sudo ./setup-ssh.sh
sudo ./setup-docker-swarm.sh
sudo ./setup-iptables.sh
sudo ./setup-configure-leds.sh
sudo ./setup-oh-my-zsh.sh

sudo resize-assistant

echo Getting certificate
sudo certbot certonly --nginx -m $EMAIL -d $DOMAIN_NAME --agree-tos --non-interactive

echo Finishing up
cd .. ; rm -rf scripts
sudo systemctl reboot
