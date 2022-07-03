#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
CONFIG_DIR=$HOME/.config/ranger

# Create necessary directories
for dir in $CONFIG_DIR; do
  mkdir -p $dir
done

# Create symlinks
for config in $(ls $BASE_DIR); do
  ln -sfT $BASE_DIR/$config $CONFIG_DIR/$config
done

exit 0

