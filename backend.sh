#!/bin/bash

#installs and runs backend of MEAN application

#create a backend user and make sure a home directory is created for it
sudo useradd --create-home backend

#set the default shell for backend to be bash
sudo usermod --shell /bin/bash backend

#switching to backend user first ensures it is installed in backend home folder

#install nodejs
sudo su - backend -c curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo su - backend -c sudo apt-get install -y nodejs

#install npm
sudo su - backend -c sudo apt install -y npm

#install mongodb
sudo su - backend -c sudo apt install -y mongodb
sudo su - backend -c sudo npm install -y mongoose

#clone backend from git
sudo su - backend -c git clone $backend_giturl

#switch to correct branch
sudo su - backend -c cd $backend_directory
sudo su - backend -c git checkout $backend_branch

#give user permissions
sudo su - backend -c cd ..
sudo su - backend -c sudo chmod -R 777 $backend_directory

#install express in project directory
sudo su - backend -c cd $backend_directory
sudo su - backend -c npm install express --save

#install npm
sudo su - backend -c npm install

#copy backend.service into systemd
sudo su - backend -c sudo cp backend.service /etc/systemd/system/

#install the backend systemd service script
sudo su - backend -c sudo systemctl daemon-reload

echo "Launching backend"
sudo su - backend -c sudo systemctl start backend
echo "Backend launched!"

#allow backend to run on system startup
sudo su - backend -c sudo systemctl enable backend




# #launch nodejs and run backend
# node index.js
