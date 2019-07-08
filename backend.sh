#!/bin/bash

#installs and runs backend of MEAN application

#create a backend user and make sure a home directory is created for it
sudo useradd --create-home backend

#set the default shell for backend to be bash
sudo usermod --shell /bin/bash backend

#switching to backend user first ensures it is installed in backend home folder
sudo su - backend

#install nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -yg nodejs

#install npm
sudo apt install -yg npm

#install mongodb
sudo apt install -yg mongodb
sudo npm install -yg mongoose

#clone backend from git
git clone $(backend_giturl)

#switch to correct branch
cd $(backend_directory)
git checkout $(backend_branch)

#give user permissions
cd ..
sudo chmod 777 -R $(backend_directory)

#install express in project directory
cd $(backend_directory)
npm install express --save

#install npm
npm install

#copy backend.service into systemd
sudo cp backend.service /etc/systemd/system/

#install the backend systemd service script
sudo systemctl daemon-reload

echo "Launching backend"
sudo systemctl start backend
echo "Backend launched!"

#allow backend to run on system startup
sudo systemctl enable backend




# #launch nodejs and run backend
# node index.js
