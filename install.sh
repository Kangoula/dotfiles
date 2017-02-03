#!/bin/bash

echo "remove previous files"
echo ""
rm -rf ~/.config/i3 ~/.config/gtk-3.0 ~/.config/mpv ~/.config/dunstrc ~/.gtkrc-2.0 ~/.Xresources ~/.zshrc ~/.zprofile ~/.bashrc ~/.bash_profile ~/.vimrc ~/.config/mpd/ ~/.ncmpcpp/

echo "creating links"
echo ""
ln config/i3 ~/.config/i3
ln config/gtk-3.0 ~/.config/gtk-3.0
ln config/dunstrc ~/.config/dunstrc
ln config/mpv ~/.config/mpv
ln gtkrc-2.0 ~/.gtkrc-2.0
ln Xresources ~/.Xresources
ln bash_profile ~/.bash_profile
ln bashrc ~/.bashrc
ln zshrc ~/.zshrc
ln zprofile ~/.zprofile
ln config/mpd ~/.config/mpd
ln ncmpcpp ~/.ncmpcpp

echo "copying icons and themes"
echo ""
if [ ! -d ~/.themes ]; then
	mkdir ~/.themes
fi
if [ ! -d ~/.icons ]; then
	mkdir ~/.icons
fi

cp -r icons/* ~/.icons/
cp -r themes/* ~/.themes/
