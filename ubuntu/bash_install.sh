#!/bin/bash

# setup.sh


# update & upgrade
sudo apt update
sudo apt upgrade

clear

echo "Building essential packages..." && sleep 5

# install dependencies
sudo apt install -y \
    build-essential \
    curl \
    libbz2-dev \
    libffi-dev \
    liblzma-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libxml2-dev \
    libxmlsec1-dev \
    llvm \
    make \
    tk-dev \
    wget \
    xz-utils \
    zlib1g-dev \
		zip \
		unzip

echo "Finish build essentials... " && sleep 5 && clear 

# install zsh
echo "Installing zsh & oh-my-zsh..."
sudo apt install -y zsh zplug
rm -rf /home/ubuntu/.oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
