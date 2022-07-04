#!/usr/bin/env bash

default_wallpaper_dir=$HOME/Dropbox/Wallpapers

# Default options
d=$default_wallpaper_dir
n=0
o=0

function print_usage() {
  echo "$0: $(basename $0) [-d wallpaper_dir] [-n] [-o]"
  echo "-d <wallpaper_dir>  Directory with wallpaper images."
  echo "                    Defaults to $default_wallpaper_dir."
  echo "-n                  No set wallpaper."
  echo "-o                  Output the image path to stdout."
}

function random_file() {
  find $1 -type f -iname "*.png" | sort -R | tail -n 1
}

while getopts "d:no" OPTION; do
  case $OPTION in
    d)
      d=$OPTARG
      ;;
    n)
      n=1
      ;;
    o)
      o=1
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
if [ $n -eq 0 ]; then
  feh --bg-max $wallpaper_file
fi

# Print file to stdout
if [ $o -eq 1 ]; then
  echo $wallpaper_file
fi

