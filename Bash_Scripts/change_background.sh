#!/bin/bash

WALLPAPERS=$HOME/Dropbox/Wallpapers
WAL_CACHE=$HOME/.cache/wal/wal

wal --vte -qni $WALLPAPERS
feh --bg-fill $(cat $WAL_CACHE)

