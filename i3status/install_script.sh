#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
CONFIG_DIR=$HOME/.config/i3status

# Create necessary directories
if [ ! -d $CONFIG_DIR ]; then
  mkdir $CONFIG_DIR
fi

# Create symlink
ln -sf $BASE_DIR/config $CONFIG_DIR/config

exit 0

