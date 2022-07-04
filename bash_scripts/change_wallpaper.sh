#!/usr/bin/env bash

default_wallpaper_dir=$HOME/Pictures/wallpapers

# Default options
d=$default_wallpaper_dir

function print_usage() {
  echo "$0: $(basename $0) [-d wallpaper_dir] [-n] [-o]"
  echo "-d <wallpaper_dir>  Directory with wallpaper images."
  echo "                    Defaults to $default_wallpaper_dir."
}

function random_file() {
  find -L $1 -type f -iname "*.png" | sort -R | tail -n 1
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

# Grab a random file and make sure it exists
wallpaper_file=$(random_file $d)
if [ ! -f $wallpaper_file ]; then
  echo "No wallpapers found in: $d."
  echo "random_file returned: $wallpaper_file."
  print_usage
  exit 1
fi

# Set the background
feh --bg-max $wallpaper_file
