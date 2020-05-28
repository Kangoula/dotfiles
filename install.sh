#!/bin/bash
CURRENT_DIR=$(pwd)
SOFTWARES_DIR=$HOME/softwares

echo "Installing antigen..."

if [ ! -d "$SOFTWARES_DIR" ]; then
    echo "    Directory $SOFTWARES_DIR not exists, creating it"
    mkdir "$SOFTWARES_DIR" 
fi

curl -L --progress-bar git.io/antigen > "$SOFTWARES_DIR"/antigen.zsh

echo "Done installting antigen"

echo "Copying config files..."

for file in "$CURRENT_DIR"/files/*; do
    echo "     $file -> $HOME"
    cp -rsfT "$file" "$HOME"
done

echo "Done copying files"