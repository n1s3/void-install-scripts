#!/bin/bash

DOTF=$(cat .files)
PKGS=$(cat pkgs.list)

for PKG in $PKGS
do
	xbps-install --yes $PKG
done

echo -e '\nInstalling vim-plug...'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e '\nInstalling dwm...'
cd dwm && make clean install
echo -e '\nInstalling dmenu...'
cd .. && cd dmenu && make clean install
cd #go home

echo -e '\nMigrating dot files and configs... '

for dotf in $DOTFILES
do
	cp -r $dotf ~/
done

clear
echo '\nInstall video drivers? [y/N]'
read ans
clear
if [ $ans -eq 'y' ]
	echo -e '\nInstalling amd drivers...'
	xbps-install --yes xf86-video-vesa
	xbps-install --yes xf86-video-amdgpu
fi
echo -e '\nDone, consider restarting asap.'
