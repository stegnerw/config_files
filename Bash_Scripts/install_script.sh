#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
BIN_DIR=$HOME/.bin

# Create necessary directories
if [ -d $BIN_DIR ]; then
  echo "WARNING: Directory already exists:"
  echo $BIN_DIR
else
  mkdir $BIN_DIR
fi

# Create symlinks
ln -sf $BASE_DIR/pixelated_screenshot.sh $BIN_DIR/pixelated_screenshot.sh
ln -sf $BASE_DIR/transfer-sleep-lock-i3lock.sh $BIN_DIR/transfer-sleep-lock-i3lock.sh
ln -sf $BASE_DIR/change_background.sh $BIN_DIR/change_background.sh
ln -sf $BASE_DIR/devilspie_transparency_compton_trans.sh $BIN_DIR/devilspie_transparency_compton_trans.sh

exit 0

