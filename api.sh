#!/bin/bash

sudo apt -y update
sudo apt -y upgrade

export backend_giturl=https://github.com/Nboaram/TeamAPoolProjectBackend.git
export backend_directory=TeamAPoolProjectBackend
export backend_branch=Developer
export backend_runfile=index.js

#install curl
sudo apt-get install -y curl

#install wget
sudo apt install -y wget

#install nodejs
echo "*****installing nodejs*****"
sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
node --version
yes | npm --version


#clone backend from git
echo "*****cloning backend*****"
sudo git clone $backend_giturl

#configure backend service
echo "*****configuring backend services*****"
sudo cp ~/MEAN_scripts/backend.service /etc/systemd/system/backend.service

#start backend service
echo "*****starting backend service*****"
cd ${backend_directory}
sudo git checkout $backend_branch
yes | npm install

sudo systemctl daemon-reload
#allow backend to run on system startup
sudo systemctl enable api.service
sudo systemctl start api.service