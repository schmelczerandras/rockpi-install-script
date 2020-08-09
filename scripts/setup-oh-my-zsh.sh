#!/bin/sh

set -e

echo Setup oh my zsh

curl -L https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh --output install-oh-my-zsh.sh
chmod +x install-oh-my-zsh.sh
sudo -u rock ./install-oh-my-zsh.sh --unattended
rm install-oh-my-zsh.sh
sudo usermod --shell /bin/zsh rock
