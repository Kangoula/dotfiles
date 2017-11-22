#!/bin/bash
C=~/.config
mkdir -p $C/polybar $C/gtk-3.0 $C/i3/lock $C/gtk-2.0 $C/nvim $C/mpd $C/mpv $C/cava $C/ncmpcpp

cp -sf ./polybar/* $C/polybar/
cp -sf ./cava/* $C/cava
cp -sf ./dunstrc $C/
cp -sf ./gtk-3.0/* $C/gtk-3.0/
cp -rsf ./i3/** $C/i3/
cp -sf ./mpd/* $C/mpd/
cp -sf ./mpv/* $C/mpv/
cp -sf ./ncmpcpp/* $C/ncmpcpp
cp -sf ./nvim/* $C/nvim

cp -sf .bash_profile ~/
cp -sf .bashrc ~/
cp -sf .gtkrc-2.0 ~/
cp -sf .Xresources ~/.Xresources
cp -sf .zprofile ~/.zprofile
cp -sf .zshrc ~/.zshrc

cp -rf .icons/* ~/.icons/
cp -rf .themes/* ~/.themes/

