#!/bin/bash

# Get script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Pull down installer script and run it
echo "Do you want to download and install conda?"
select ans in "Yes" "No"; do
  case $ans in
    Yes )
      wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O conda_tmp.sh
      chmod u+x conda_tmp.sh
      ./conda_tmp.sh
      rm conda_tmp.sh
      break
      ;;
    No )
      break
      ;;
  esac
done

# Link .condarc to home directory
ln -s -f $(realpath condarc) $HOME/.condarc


