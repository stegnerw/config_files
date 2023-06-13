#!/usr/bin/env bash

default_wallpaper_dir=$HOME/Pictures/wallpapers

# Default options
d=$default_wallpaper_dir

function print_usage() {
  echo "$0: $(basename $0) [-d wallpaper_dir] [-n] [-o]"
  echo "-d <wallpaper_dir>  Directory with wallpaper images."
  echo "                    Defaults to $default_wallpaper_dir."
}

while getopts "d:no" OPTION; do
  case $OPTION in
    d)
      d=$OPTARG
      ;;
    ?)
      print_usage
      exit 1
      ;;
  esac
done

## Make sure d exists
if [ ! -d $d ]; then
  echo "wallpaper_dir not found: $d"
  exit 1
fi

# Set the background
feh --bg-max --randomize $d/*
