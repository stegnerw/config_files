#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
BIN_DIR=$HOME/.local/bin

# Create necessary directories
mkdir -p $BIN_DIR

# Create symlinks and set execute
for script in $(ls $BASE_DIR/*); do
  script_name=$(basename $script)
  if [ $script_name == "install_script.sh" ]; then
    continue
  fi
  chmod 0755 $script
  ln -sf $script $BIN_DIR/$script_name
done

exit 0
