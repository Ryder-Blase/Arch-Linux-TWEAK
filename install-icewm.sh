#!/bin/bash
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm icewm picom xorg-xinit

echo -e "exec picom &\nexec icewm-session" > ~/.xinitrc

chmod +x ~/.xinitrc

startx
