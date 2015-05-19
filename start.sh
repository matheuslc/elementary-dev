#!/bin/bash

echo "Hello bro :P"

TEMPPATH="elemantary-dev-temp"
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
