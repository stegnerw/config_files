#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
ALIAS_DIR=$HOME/.bash_aliases

# Create necessary directories
if [ ! -d $ALIAS_DIR ]; then
  mkdir $ALIAS_DIR
fi

# Create symlinks
ln -sf $BASE_DIR/bashrc $HOME/.bashrc
ln -sf $BASE_DIR/profile $HOME/.profile
ln -sf $BASE_DIR/Xresources $HOME/.Xresources



ln -sf $BASE_DIR/bash_aliases/general $ALIAS_DIR/general

# Create alias files
for name in general $(hostname); do
  ln -sf  $BASE_DIR/bash_aliases/$name $ALIAS_DIR/$name
done

## Computer specific files
#echo "Which computer (for alias files)?"
#select computer in "Galapagos" "Emperor" "None"; do
  #case $computer in
    #Galapagos)
      #ln -sf $BASE_DIR/bash_aliases/galapagos $ALIAS_DIR/galapagos
      #break
      #;;
    #Emperor)
      #ln -sf $BASE_DIR/bash_aliases/emperor $ALIAS_DIR/emperor
      #break
      #;;
    #None)
      #break
      #;;
  #esac
#done

exit 0

