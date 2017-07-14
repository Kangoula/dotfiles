#!/bin/bash

echo "copy config files"
echo ""
cp -r config/* $HOME/config/
cp gtkrc-2.0 $HOME/.gtkrc-2.0
echo "done"
echo ""

echo "env files"
echo ""
cp Xresources ~/.Xresources
cp bash_profile ~/.bash_profile
cp bashrc ~/.bashrc
cp zshrc ~/.zshrc
cp zprofile ~/.zprofile
echo "done"
echo ""

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

echo "done"
echo ""
