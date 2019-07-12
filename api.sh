#!/bin/bash

sudo apt -y update
sudo apt -y upgrade

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