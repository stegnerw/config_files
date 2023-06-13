#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
CONFIG_DIR=$HOME/.config/i3
PARTS_DIR=$CONFIG_DIR/parts

# Clear parts directory
rm -rf $PARTS_DIR

# Create necessary directories
for dir in $CONFIG_DIR $PARTS_DIR; do
  if [ ! -d $dir ]; then
    mkdir $dir
  fi
done

# Create symlinks
for ext in .general .$(hostname); do
  for part in $(ls $BASE_DIR | grep $ext | sort); do
    src=$BASE_DIR/$part
    dst=$PARTS_DIR/$(basename $part $ext)
    ln -sf $src $dst
  done
done

conf_merge=$(realpath "${BASE_DIR}/../bash_scripts/i3_config_merge.sh")
printf "Attempting to call i3_config_merge.sh:\n  \"${conf_merge}\"\n"
if [[ -x $conf_merge ]]; then
  printf "Merging...\n"
  $conf_merge
else
  printf "Couldn't find i3_config_merge.sh. Please run manually!\n"
fi

exit 0

