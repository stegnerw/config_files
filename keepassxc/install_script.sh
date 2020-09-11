#!/bin/bash

# Directory definitions and creation
BASE_DIR=$(realpath $(dirname "$0"))
CONF_DIR=$HOME/.config/keepassxc
mkdir -p $CONF_DIR

# Create symlinks
ln -sf $BASE_DIR/keepassxc.ini $CONF_DIR/keepassxc.ini
ln -sf $BASE_DIR/keepassxc.ini.Ti3751 $CONF_DIR/keepassxc.ini.Ti3751

exit 0

