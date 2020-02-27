#!/bin/bash

# Create sym line
ln -s -f $(realpath config) $HOME/.config/i3status/config

exit 0

