#!/bin/bash

#installs MEAN stack and launches a project


export backend_runfile=index.js
export backend_giturl=https://github.com/Nboaram/TeamAPoolProjectBackend.git
export backend_directory=TeamAPoolProjectBackend
export backend_branch=Developer

export frontend_giturl=https://github.com/Nboaram/TeamAPoolProjectUI.git
export frontend_directory=TeamAPoolProjectUI
export frontend_branch=Developer

#update
sudo apt update

#install curl
sudo apt-get install -y curl

#install wget
sudo apt install -y wget

echo "launching backend"
./backend.sh


