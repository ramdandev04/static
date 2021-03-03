#!/bin/bash
sudo sh -c 'echo root:Admur04012000 | chpasswd'
apt update
apt upgrade -y
sleep
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash && source ~/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
sleep 2
clear
sleep 2
echo 'try'
nvm install v14.15.5
