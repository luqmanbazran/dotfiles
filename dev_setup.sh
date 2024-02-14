#!/bin/bash
#Updates the packages installed to the newest version
dnf update

#Using the package manager, install git, vim, tmux and zsh
dnf -y install git vim tmux zsh

#Clone a github repo containing the .zshrc and .vimrc to be configured
git clone https://github.com/luqmanbazran/dotfiles.git ~/

#Configure .zshrc 
cp learnBash/.zshrc ~/

#Configure .vimrc
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged
cp learnBash/.vimrc ~/

#Change the default shell to zsh
chsh -s $(which zsh)
