#!/bin/bash
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
export RANGER_LOAD_DEFAULT_RC=false
export GTK_THEME=Adwaita:dark
wmname LG3D

picom --config ${HOME}/.config/picom/picom.conf &
${HOME}/.fehbg &
#${HOME}/.screenlayout/default.sh &
#dwmblocks &
xset s 3600 3600 -dpms & #power settings
exec dwm
