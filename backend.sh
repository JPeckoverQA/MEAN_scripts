#!/bin/bash
source install.sh

#installs and runs backend of MEAN application


#install mongodb
echo "*****installing mongodb*****"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

echo "*****starting mongodb service*****"
sudo service mongod start


#clone backend from git
echo "*****cloning backend*****"
cd ~/${project-name}
sudo git clone $backend_giturl


#configure backend service
echo "*****configuring backend services*****"
sudo cp ~/Mean_scripts/backend.service /etc/systemd/system/backend.service

#start backend service
echo "*****starting backend service*****"
cd ~/${project-name}/${backend_directory}
sudo git checkout $backend_branch
sudo npm install -y

sudo systemctl daemon-reload
#allow backend to run on system startup
sudo systemctl enable backend
sudo systemctl start backend
