#!/bin/bash
C=~/.config
mkdir -p $C/polybar $C/gtk-3.0 $C/i3/lock $C/gtk-2.0 $C/nvim $C/mpd $C/mpv $C/cava $C/ncmpcpp

cp -sf $HOME/code/dotfiles/polybar/* $C/polybar/
cp -sf $HOME/code/dotfiles/cava/* $C/cava
cp -sf $HOME/code/dotfiles/dunstrc $C/
cp -sf $HOME/code/dotfiles/gtk-3.0/* $C/gtk-3.0/
cp -sf $HOME/code/dotfiles/mpd/* $C/mpd/
cp -sf $HOME/code/dotfiles/mpv/* $C/mpv/
cp -sf $HOME/code/dotfiles/ncmpcpp/* $C/ncmpcpp
cp -sf $HOME/code/dotfiles/nvim/* $C/nvim
cp -rsf $HOME/code/dotfiles/i3/** $C/i3/

cp -sf $HOME/.bash_profile ~/
cp -sf $HOME/.bashrc ~/
cp -sf $HOME/.gtkrc-2.0 ~/
cp -sf $HOME/.Xresources ~/.Xresources
cp -sf $HOME/.zprofile ~/.zprofile
cp -sf $HOME/.zshrc ~/.zshrc

cp -rf $HOME/.icons/* ~/.icons/
cp -rf $HOME/.themes/* ~/.themes/

