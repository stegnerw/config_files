#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
BIN_DIR=$HOME/.bin

# Create necessary directories
if [ ! -d $BIN_DIR ]; then
  mkdir $BIN_DIR
fi

# Create symlinks and set execute
for script in $(ls $BASE_DIR/*.sh $BASE_DIR/docscan); do
  script_name=$(basename $script)
  if [ $script_name == "install_script.sh" ]; then
    continue
  fi
  chmod 0755 $script
  ln -sf $script $BIN_DIR/$script_name
done

exit 0
