#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
CONFIG_DIR=$HOME/.config/kitty

# Create necessary directories
for dir in $CONFIG_DIR; do
  mkdir -p $dir
done

# Create symlinks
ln -sf $BASE_DIR/kitty.conf $CONFIG_DIR/kitty.conf

exit 0

