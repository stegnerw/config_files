#!/bin/bash

ln -s -f $(realpath vimrc) $HOME/.vimrc

# Install Vundle

# Check for git
if [ -z $(which git) ]; then
  echo "Missing dependency: git"
  exit 1
fi

# Install Vundle and plugins
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  echo "Vundle not found. Cloning from git..."
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
  echo "Vundle already found. Not cloning from git."
fi
vim +PluginInstall +qall

