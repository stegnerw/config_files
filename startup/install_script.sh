#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
ALIAS_DIR=$HOME/.bash_aliases

# Create necessary directories
if [ ! -d $ALIAS_DIR ]; then
  mkdir $ALIAS_DIR
fi

# Create symlinks
ln -sf $BASE_DIR/bashrc $HOME/.bashrc
ln -sf $BASE_DIR/profile $HOME/.profile

ln -sf $BASE_DIR/bash_aliases/general $ALIAS_DIR/general

# Create alias files
for name in general $(hostname); do
  ln -sf  $BASE_DIR/bash_aliases/$name $ALIAS_DIR/$name
done

exit 0

