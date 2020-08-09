#!/bin/sh

set -e

echo Setup SSH

mkdir -p -m777 /home/rock/.ssh
cat ssh/key.pub >> /home/rock/.ssh/authorized_keys
sudo chmod -R 700 /home/rock/.ssh
sudo chown -R rock:rock /home/rock/.ssh
sudo cp --no-preserve=mode,ownership ssh/sshd_config /etc/ssh/sshd_config
sudo systemctl reload sshd
