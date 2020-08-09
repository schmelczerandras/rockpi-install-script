#!/bin/sh

set -e


## Change this
HOST=schmelczer.ml
#


echo Copy scripts
sshpass -p 'rock' scp -r scripts rock@$HOST:/home/rock/

echo Run scripts
sshpass -p 'rock' ssh -t rock@$HOST "\
    cd /home/rock/scripts                          &&\
    find . -type f | xargs sed -i 's/\r//g'        &&\
    echo \"Default password of user 'rock': \"     &&\
    sudo date                                      &&\
    sudo ./setup.sh"
