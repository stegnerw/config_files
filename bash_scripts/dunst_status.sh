#!/usr/bin/env bash

if [ $(dunstctl is-paused) = true ]; then
  rm -f ~/.config/dunst/is_on
else
  touch ~/.config/dunst/is_on
fi
