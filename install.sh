#!/bin/sh

# This is the EasyNOMP install script.
echo "EasyNOMP install script."
echo "Please do NOT run as root, run as the pool user!"

echo "Installing... Please wait!"

sleep 3

sudo add-apt-repository -y ppa:bitcoin/bitcoin

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

sudo apt-get install -y sudo git nano wget curl ntp build-essential libtool autotools-dev autoconf pkg-config libssl-dev libboost-all-dev git npm nodejs nodejs-legacy libminiupnpc-dev redis-server software-properties-common fail2ban libdb4.8-dev libdb4.8++-dev

sudo systemctl enable fail2ban
sudo systemctl start fail2ban

sudo systemctl enable redis-server
sudo systemctl start redis-server

sudo systemctl enable ntp
sudo systemctl start ntp

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bashrc

nvm install v8.1.4
nvm use v8.1.4
npm update -g

npm install -g pm2@latest
npm install -g npm@latest

git clone https://github.com/leshacat/EasyNOMP.git $(pwd)/EasyNOMP

cd EasyNOMP

pm2 init

npm install

npm update
npm audit fix

pm2 start init.js -i max --watch --name pool


echo "Installation completed!"
echo "Please resume installation at the EasyNOMP Wiki: https://github.com/leshacat/EasyNOMP/wiki"

exit 0
