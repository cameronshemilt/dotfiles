#!/bin/bash

cwd=$(pwd)

# Brewfile
cd ~/Desktop
brew bundle dump
cat ~/Desktop/Brewfile > ~/code/dotfiles/Brewfile
rm ~/Desktop/Brewfile
# SSH config
cat ~/.ssh/config > ~/code/dotfiles/config
# Bash Profile
cat ~/.bash_profile > ~/code/dotfiles/bash_profile

cd ~/code/dotfiles
git add -A
git commit -m "Updated dotfiles as of $(date +"%D %T")"
read -p "Dotfiles comitted. Do you want to push? (y/N)" -n 1 -r
echo ""
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    cd cwd
    exit 1
fi
git push
cd cwd