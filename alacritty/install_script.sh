#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
CONFIG_DIR=$HOME/.config/alacritty

# Create necessary directories
for dir in $CONFIG_DIR; do
  if [ ! -d $dir ]; then
    mkdir $dir
  fi
done

# Create symlinks
ln -sf $BASE_DIR/alacritty.yml $CONFIG_DIR/alacritty.yml

exit 0

