#!/bin/bash

#installs and runs frontend of MEAN application

#install angular 
echo "*****installing angular*****"
yes | sudo npm install -g @angular/cli
ng --version


#clone frontend from git
echo "*****cloning frontend*****"
cd ~/${project_name}
git clone $frontend_giturl

#configure frontend service
echo "*****configuring frontend services*****"
sudo cp ~/MEAN_scripts/frontend.service /etc/systemd/system/frontend.service

#start frontend service
echo "*****starting frontend service*****"
cd ~/${project_name}/${frontend_directory}
git checkout $frontend_branch
sudo npm install -y

sudo systemctl daemon-reload
#allow frontend to run on system startup
sudo systemctl enable frontend
sudo systemctl start frontend
