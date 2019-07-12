#!/bin/bash

#installs and runs frontend of MEAN application







#clone frontend from git
echo "*****cloning frontend*****"
cd ~/${project_name}
sudo git clone $frontend_giturl

#configure frontend service
echo "*****configuring frontend services*****"
sudo cp ~/MEAN_scripts/frontend.service /etc/systemd/system/frontend.service

#start frontend service
echo "*****starting frontend service*****"
#install angular 
echo "*****installing angular*****"
cd ~/${project_name}/${frontend_directory}
git checkout $frontend_branch
yes | sudo npm install -y
yes | sudo NG_CLI_ANALYTICS=ci npm install -g @angular/cli
ng --version

sudo systemctl daemon-reload
#allow frontend to run on system startup
sudo systemctl enable frontend
sudo systemctl start frontend