#!/bin/bash

# Create .bin folder if it does not exist
if [ ! -d ~/.bin ]; then
  mkdir ~/.bin
fi

# Add sym links
ln -s -f $(realpath pixelated_screenshot.sh) $HOME/.bin/pixelated_screenshot.sh
ln -s -f $(realpath transfer-sleep-lock-i3lock.sh) $HOME/.bin/transfer-sleep-lock-i3lock.sh

exit 0

