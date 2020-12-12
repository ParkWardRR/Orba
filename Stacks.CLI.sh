#!/bin/bash
sudo curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -

# https://github.com/nvm-sh/nvm
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# install stuff
sudo apt -y install gcc g++ make htop nodejs neofetch


node  -v

# https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.profile
npm install -g jshint


# Install stacks cli

npm install -g @stacks/cli

