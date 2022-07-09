#!/usr/bin/env zsh

# Directory definitions
base_dir=$(realpath $(dirname "$0"))
if [ -z $ZSH ]; then
  ZSH=$HOME/.oh-my-zsh
fi

# Create necessary directories
for dir in $ZSH; do
  mkdir -p $ZSH
done

# Create symlinks
ln -sf $base_dir/zshrc $HOME/.zshrc
ln -sf $base_dir/zprofile $HOME/.zprofile

ln -sfT $base_dir/custom $ZSH/custom

exit 0

