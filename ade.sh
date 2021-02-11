apt update
apt upgrade
sleep
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
echo "one"
echo 'two'
source ~/.bashrc
sleep 5
clear
sleep 5
echo 'try'
nvm install v14.15.5
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64,s390x ] http://repo.mongodb.com/apt/ubuntu focal/mongodb-enterprise/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-enterprise.list
apt update
sudo apt-get install -y mongodb-enterprise
sudo systemctl start mongod
sudo systemctl enable mongod
