# Securely setup a [Rock Pi S](https://wiki.radxa.com/RockpiS) as a swarm manager

![Rock Pi](https://wiki.radxa.com/mw/images/d/d0/Rockpi_s_yellow_1200px.png)

## Goals

- Docker swarm installed with the Rock Pi being a manager
- iptables rules set up disabling ports apart from 22, 80, and 443
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) setup ran
- SSH configured for public key based authentication
- Certbot set up (with nginx specific helpers)
- Blinking blue led disabled and the green one made blinking instead

## Usage

1. Burn the [OS image](rockpis_debian_buster_minimal_arm64_20200615_1225-gpt.img.gz) to a Micro SD card
2. Set the variables inside [setup-remote.sh](setup-remote.sh)
3. Change the public key inside of [scripts/ssh/key.pub](scripts/ssh/key.pub) to be yours.
4. Modify the scripts based on your specific needs
5. Get a domain name and configure its DNS entry to point to the device's IP
   > You can get one for free from [freenom](https://www.freenom.com/en/index.html?lang=en)
6. Boot up the the Rock Pi
7. Run the [setup-remote.sh](setup-remote.sh) script

8. Optionally, log in to a docker registry by running `echo your_password | docker login -u your_username --password-stdin`
