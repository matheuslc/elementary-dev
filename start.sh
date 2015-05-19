#!/bin/bash

echo "Hello bro :P"

echo "deb http://repository.spotify.com stable non-free" >> ~/etc/apt/sources.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59
sudo add-apt-repository ppa:deluge-team/ppa

# TEMP Path
TEMPPATH="elemantary-dev-temp"


rm -rf $TEMPPATH
mkdir $TEMPPATH

sudo apt-get update

echo "Installing basic packages."
sudo apt-get install gcc g++ git git-core curl

echo "Installing nodejs..."

# https://gist.github.com/isaacs/579814
echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
. ~/.bashrc
mkdir ~/local
mkdir ~/node-latest-install
cd ~/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install
curl https://www.npmjs.org/install.sh | sh

echo "Installing softwares"

# Text editor
wget --directory-prefix=$TEMPPATH http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb
sudo dpkg -i $TEMPATH/sublime-text_build-3083_amd64.deb

# Browsers
wget --directory-prefix=$TEMPPATH https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i $TEMPATH/google-chrome-stable_current_amd64.deb

# Spotify
sudo apt-get install spotify-client

# VLC Player
sudo apt-get install vlc

# Torrent
sudo apt-get install deluge

# Tools
npm install -g gulp
npm install -g webpack
