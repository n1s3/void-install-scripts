#!/bin/bash

DOTF=$(cat .files)
PKGS=$(cat pkgs.list)

for PKG in $PKGS
do
	xbps-install --yes $PKG
done

echo -e 'Installing vim-plug... \n'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e 'Installing dwm... \n'
cd dwm && make clean install
echo -e 'Installing dmenu... \n'
cd .. && cd dmenu && make clean install
cd ..

echo -e 'Migrating dot files and configs... '

for dotf in $DOTFILES
do
	cp -r dotf
done
