#!/bin/bash
#Test Script to see if the packages and dotfiles are set up properly
#Check if git is installed
if [[ $(which git) ]]; then
    echo "git is installed"
else
    echo "git is not installed"
fi

#Check if tmux is installed
if [[ $(which tmux) ]]; then
    echo "tmux is installed"
else
    echo "tmux is not installed"
fi

#Check if vim is installed
if [[ $(which vim) ]]; then
    echo "vim is installed"
else
    echo "vim is not installed"
fi

#Check if zsh is installed
if [[ $(which zsh) ]]; then
    echo "zsh is installed"
else
    echo "zsh is not installed"
fi

#Compare hash of installed .zshrc and .vimrc file to see if the files are the same
zshrc_md5=($(md5sum ~/.zshrc | awk '{print $1}'))
vimrc_md5=($(md5sum ~/.vimrc | awk '{print $1}'))

#Compare .zshrc hash
if [ $zshrc_md5 == "4d3bf12f71e2781cd2182b1fb819ba2b" ]; then
    echo ".zshrc file is configured"
else
    echo ".zshrc file is not configured"
fi

#Compare .vimrc file
if [ $vimrc_md5 == "7983a3c3e209b215af87d2e9b9d539ba" ]; then
    echo ".vimrc file is configured"
else
    echo ".vimrc file is not configured"
fi

