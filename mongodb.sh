#!/bin/bash
sudo apt -y update
sudo apt -y upgrade
#installs and runs mongodb of MEAN application


#install mongodb
echo "*****installing mongodb*****"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

echo "*****starting mongodb service*****"
sudo service mongod start