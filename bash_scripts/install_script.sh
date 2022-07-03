#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
BIN_DIR=$HOME/.bin

# Create necessary directories
if [ ! -d $BIN_DIR ]; then
  mkdir $BIN_DIR
fi

# Create symlinks and set execute
for script in $(ls $BASE_DIR); do
  if [ $script == "install_script.sh" ]; then
    continue
  fi
  echo $script
  chmod 0700 $BASE_DIR/$script
  ln -sf $BASE_DIR/$script $BIN_DIR/$script
done

exit 0

