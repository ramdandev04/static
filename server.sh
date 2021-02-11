#!/bin/sh
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
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64,s390x ] http://repo.mongodb.com/apt/ubuntu focal/mongodb-enterprise/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-enterprise.list
apt update
sudo apt-get install -y mongodb-enterprise
sudo systemctl start mongod
sudo systemctl enable mongod
