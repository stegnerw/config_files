#!/bin/bash

# Directory definitions
base_dir=$(realpath $(dirname "$0"))
applications_dir=$HOME/.local/share/applications

# Create necessary directories
mkdir -p $applications_dir

for dtfile in $(ls $base_dir/*.desktop); do
  ln -sf $dtfile "$applications_dir/"
done

exit 0
