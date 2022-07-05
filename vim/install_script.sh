#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
VUNDLE_DIR=$HOME/.vim/bundle/Vundle.vim

# Create symlinks
ln -sf $BASE_DIR/vimrc $HOME/.vimrc
ln -sf $BASE_DIR/spell $HOME/.vim/

# Install Vundle

# Check for git
if [ -z $(which git) ]; then
  echo "Missing dependency: git"
  exit 1
fi

# Install plugins
vim +PlugUpdate +PlugUpgrade +PlugClean

exit 0
