#!/usr/bin/env bash
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install -y build-essential libssl-dev git python2.7
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
echo "source ~/.nvm/nvm.sh" >> ~/.profile
source ~/.profile
nvm install 4.1.1
nvm alias default 4.1.1
npm install -g hubot yo generator-hubot
mkdir ~/bot
cd ~/bot
yo hubot
npm install hubot-slack --save
sudo wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
git init