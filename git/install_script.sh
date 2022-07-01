#!/bin/bash

# Directory definitions
base_dir=$(realpath $(dirname "$0"))
config_dir=$XDG_CONFIG_HOME/git
mkdir -p $config_dir

# Create symlinks
ln -sf $base_dir/config $config_dir/config
ln -sf $base_dir/ignore $config_dir/ignore
ln -sf $base_dir/$(hostname).personal_user.gitconfig \
  $config_dir/personal_user.gitconfig

exit 0

