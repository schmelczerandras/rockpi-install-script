#!/bin/sh

set -e

echo Setup configure LEDs

sudo cp configure-leds/configure-leds.sh /root/configure-leds.sh
sudo chmod +x /root/configure-leds.sh
sudo /root/configure-leds.sh
sudo chown root:root /root/configure-leds.sh
sudo cp configure-leds/configure-leds.service /etc/systemd/system/configure-leds.service
sudo systemctl enable configure-leds.service
