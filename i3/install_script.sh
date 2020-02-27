#!/bin/bash

ln -s -f $(realpath xsessionrc) $HOME/.xsessionrc
ln -s -f $(realpath config) $HOME/.config/i3/config

exit 0

