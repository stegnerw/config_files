#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
CONFIG_DIR=$XDG_CONFIG_HOME/git
mkdir -p $CONFIG_DIR

# Create symlinks
ln -sf $BASE_DIR/config $CONFIG_DIR/config
ln -sf $BASE_DIR/ignore $CONFIG_DIR/ignore

exit 0

