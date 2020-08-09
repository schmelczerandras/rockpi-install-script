# Securely setup a [Rock Pi S](https://wiki.radxa.com/RockpiS)

![Rock Pi](https://wiki.radxa.com/mw/images/d/d0/Rockpi_s_yellow_1200px.png)

## Goals

- Docker swarm installed with the Rock Pi being a manager
- iptables rules set up disabling ports apart from 22, 80, and 443
- Blinking blue led disabled and the green one made blinking instead
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) setup ran
- SSH configured for public key based authentication
- Certbot set up (with nginx specific helpers)

## Usage

1. Burn the os to a micro sd card
2. Set the variables inside [setup-remote.sh](setup-remote.sh)
3. Modify the scripts based on your specific needs
4. Get a domain name and configure its DNS entry to point to the device's IP
   > You can get one for free from [freenom](https://www.freenom.com/en/index.html?lang=en)
5. Boot up the the Rock Pi
6. Run the [setup-remote.sh](setup-remote.sh) script

7. Optionally, log in to a docker registry by running `echo your_password | docker login -u your_username --password-stdin`
