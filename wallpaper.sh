#!/bin/bash

#sets wallpaper for default install

papes_dir=$HOME/Documents/Wallpapers

mkdir -p $papes_dir 
wget -O $papes_dir/Void_Linux.png https://wallpapercave.com/download/void-edge-wallpapers-wp5695627
feh --bg-scale $papes_dir/Void_Linux.png
