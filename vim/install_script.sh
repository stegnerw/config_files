#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
VIM_DIR=$HOME/.vim
VIM_BACKUP_DIR=$VIM_DIR/backup
mkdir -p $VIM_BACKUP_DIR

# Create symlinks
ln -sf $BASE_DIR/vimrc $HOME/.vimrc
ln -sf $BASE_DIR/spell $VIM_DIR

# Check for git
if [ -z $(which git) ]; then
  echo "Missing dependency: git"
  exit 1
fi

# Install plugins
vim +PlugUpdate +PlugUpgrade +PlugClean

exit 0
