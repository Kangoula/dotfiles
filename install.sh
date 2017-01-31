#!/bin/bash

echo "remove previous files"
echo ""
rm -rf ~/.config/i3 ~/.config/gtk-3.0 ~/.config/mpv ~/.config/dunstrc ~/.gtkrc-2.0 ~/.Xresources

echo "creating links"
echo ""
ln -s config/i3 ~/.config/i3
ln -s config/gtk-3.0 ~/.config/gtk-3.0
ln -s config/dunstrc ~/.config/dunstrc
ln -s config/mpv ~/.config/mpv
ln -s gtkrc-2.0 ~/.gtkrc-2.0
ln -s Xresources ~/.Xresources

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
