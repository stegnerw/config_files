#!/bin/bash

# Directory definitions
base_dir=$(realpath $(dirname "$0"))
config_dir=$XDG_CONFIG_HOME
mkdir -p $config_dir

# Create symlinks
ln -sf $base_dir/stalonetrayrc $config_dir/stalonetrayrc
