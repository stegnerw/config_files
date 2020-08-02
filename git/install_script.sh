#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))

# Create symlinks
ln -sf $BASE_DIR/gitconfig $HOME/.gitconfig
ln -sf $BASE_DIR/gitignore $HOME/.gitignore

exit 0

