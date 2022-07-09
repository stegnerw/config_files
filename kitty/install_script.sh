#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
CONFIG_DIR=$HOME/.config/kitty

# Create necessary directories
for dir in $CONFIG_DIR; do
  mkdir -p $dir
done

# Create symlinks
for config in $(ls $BASE_DIR/*.conf); do
  config_n=$(basename $config)
  ln -sf $BASE_DIR/$config_n $CONFIG_DIR/$config_n
done

exit 0

