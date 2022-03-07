#!/bin/bash

if [ 'whoami' != root ]
then
	echo "requires root, please run with root access"
	exit	
fi

#installs git, it's probably installed already but why not. Now it's certainly installed.
mkdir -p $HOME/Downloads && cd $HOME/Downloads
xbps-install --yes git && git clone https://github.com/n1s3/void-install-scripts.git
PKGS=$(cat $HOME/Downloads/void-install-scripts/pkgs.list)

for PKG in $PKGS
do
	xbps-install --yes $PKG
done