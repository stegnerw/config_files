#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))

# Loop through directories
for d in $(ls -d $BASE_DIR/*/); do
  dir=$(realpath $d)
  if [ -f $dir/install_script.sh ]; then
    echo "Install $(basename $dir)?"
    select install in "Yes" "No"; do
      case $install in
        Yes)
          bash $dir/install_script.sh
          break
          ;;
        No)
          break
          ;;
      esac
    done
  else
    echo "Could not find install script:"
    echo "$dir/install_script.sh"
  fi
done

exit 0

