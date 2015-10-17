#!/usr/bin/env bash
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install -y build-essential libssl-dev git python2.7
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
echo "source ~/.nvm/nvm.sh" >> ~/.profile
source ~/.profile
nvm install 4.2.1
nvm alias default 4.2.1
mkdir ~/bot
git clone https://github.com/kenjindomini/hubot.git ~/bot
cd ~/bot
sudo wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
npm install
