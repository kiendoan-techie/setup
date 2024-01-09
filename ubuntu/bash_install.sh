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
		unzip \


sudo apt install -y cowsay sl lolcat figlet

# install catsay
wget https://github.com/muhammadmuzzammil1998/catsay/releases/download/v2.1/catsay-linux-amd64.deb
sudo dpkg -i catsay-linux-amd64.deb
rm *.deb

echo "Finish build essentials... " && sleep 5 && clear 

# install zsh
echo "Installing zsh & oh-my-zsh..."
sudo apt install -y zsh zplug
rm -rf /home/ubuntu/.oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
