#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))

# Create symlinks
ln -sf $BASE_DIR/alacritty.yml $HOME/.config/alacritty/alacritty.yml

exit 0

