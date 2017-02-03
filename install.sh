#!/bin/bash

PREFIX=~/.config

echo "remove previous files"
echo ""
rm -rf $PREFIX/i3 $PREFIX/gtk-3.0 $PREFIX/mpv $PREFIX/dunstrc ~/.gtkrc-2.0 ~/.Xresources ~/.zshrc ~/.zprofile ~/.bashrc ~/.bash_profile ~/.vimrc $PREFIX/mpd/ ~/.ncmpcpp/ $PREFIX/ncmpcpp

echo "creating directories"
echo ""
mkdir $PREFIX/i3 $PREFIX/i3/lock $PREFIX/i3/lock/icons $PREFIX/gtk-3.0 $PREFIX/mpv $PREFIX/mpd $PREFIX/ncmpcpp $PREFIX/ncmpcpp/playlists


echo "creating links"
echo ""
echo "i3 config files"
ln config/i3/config $PREFIX/i3/config
ln config/i3/i3status.conf $PREFIX/i3/i3status.conf
ln config/i3/lock.sh $PREFIX/i3/lock.sh
ln config/i3/compton.conf $PREFIX/i3/compton.conf
ln config/i3/lock/lock $PREFIX/i3/lock/lock
ln config/gtk-3.0/bookmarks $PREFIX/gtk-3.0/bookmarks
ln config/gtk-3.0/settings.ini $PREFIX/gtk-3.0/settings.ini
ln gtkrc-2.0 ~/.gtkrc-2.0
echo "done"
echo "other files"
ln config/dunstrc $PREFIX/dunstrc
ln config/mpv/mpv.conf $PREFIX/mpv/mpv.conf
ln config/mpd/mpd.conf $PREFIX/mpd/mpd.conf
ln config/ncmpcpp/config ~/$PREFIX/ncmpcpp/config

echo "done"
echo "env files"
ln Xresources ~/.Xresources
ln bash_profile ~/.bash_profile
ln bashrc ~/.bashrc
ln zshrc ~/.zshrc
ln zprofile ~/.zprofile
echo "done"

echo "copying icons and themes"
echo ""
if [ ! -d ~/.themes ]; then
	mkdir ~/.themes
fi
if [ ! -d ~/.icons ]; then
	mkdir ~/.icons
fi

cp -r config/i3/lock/icons $PREFIX/i3/lock/
cp -r icons/* ~/.icons/
cp -r themes/* ~/.themes/
