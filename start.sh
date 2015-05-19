#!/bin/bash

echo "Hello bro :P"

# TEMP Path
TEMPPATH="elemantary-dev-temp"


rm -rf $TEMPPATH
mkdir $TEMPPATH

# sudo apt-get update

echo "Installing basic packages."
sudo apt-get install gcc g++ git git-core curl

echo "Installing nodejs..."

https://gist.github.com/isaacs/579814
echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
. ~/.bashrc
mkdir ~/local
mkdir ~/node-latest-install
cd ~/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install
curl https://www.npmjs.org/install.sh | sh

# Text editor
echo 'Whats text editor you want to download ?'
echo '1 - Sublime Text 3'
echo '2 - ATOM'

read textEditor

case "$textEditor" in
	"1")	
		echo "Installing Sublime Text 3"
	    wget --directory-prefix=$TEMPPATH http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb
	    sudo dpkg -i $TEMPATH/sublime-text_build-3083_amd64.deb
	    ;;
  "2")
		echo "Installing ATOM"
		wget --directory-prefix=$TEMPPATH https://github.com/atom/atom/releases/download/v0.199.0/atom-amd64.deb
		sudo dpkg -i $TEMPATH/atom-amd64.deb
esac

