#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
CONFIG_DIR=$HOME/.config/i3

# Create necessary directories
if [ -d $CONFIG_DIR ]; then
  echo "WARNING: Directory already exists:"
  echo $CONFIG_DIR
else
  mkdir $CONFIG_DIR
fi

# Create symlinks
ln -sf $BASE_DIR/xsessionrc $HOME/.xsessionrc
ln -sf $BASE_DIR/config $CONFIG_DIR/config

exit 0

