#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
ALIAS_DIR=$HOME/.bash_aliases

# Create necessary directories
if [ -d $ALIAS_DIR ]; then
  echo "WARNING: Directory already exists:"
  echo $ALIAS_DIR
else
  mkdir $ALIAS_DIR
fi

# Create symlinks
ln -sf $BASE_DIR/bashrc $HOME/.bashrc
ln -sf $BASE_DIR/profile $HOME/.profile
ln -sf $BASE_DIR/Xresources $HOME/.Xresources
ln -sf $BASE_DIR/Bash_Aliases/general $ALIAS_DIR/general

# Computer specific files
echo "Which computer (for alias files)?"
select computer in "Galapagos" "Emperor" "None"; do
  case $computer in
    Galapagos)
      ln -sf $BASE_DIR/Bash_Aliases/galapagos $ALIAS_DIR/galapagos
      break
      ;;
    Emperor)
      ln -sf $BASE_DIR/Bash_Aliases/emperor $ALIAS_DIR/emperor
      break
      ;;
    None)
      break
      ;;
  esac
done

exit 0

