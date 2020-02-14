#!/bin/bash

if [ -z $1 ]; then
  echo "Optional argument: $(basename $0) <computer name>"
fi

# General files
ln -s -f $(realpath bashrc) $HOME/.bashrc
ln -s -f $(realpath profile) $HOME/.profile
ln -s -f $(realpath Xresources) $HOME/.Xresources
rm -rf ~/.bash_aliases
mkdir ~/.bash_aliases
ln -s -f $(realpath Bash_Aliases/general) $HOME/.bash_aliases/general 

# Computer specific files
if [ "Galapagos" = $1 ]; then
  ln -s -f $(realpath Bash_Aliases/galapagos) $HOME/.bash_aliases/galapagos
elif [ "Emperor" = $1 ]; then
  ln -s -f $(realpath Bash_Aliases/emperor) $HOME/.bash_aliases/emperor
else
  echo "No valid computer selected - ignoring computer specific files"
fi

exit 0

