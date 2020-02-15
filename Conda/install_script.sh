#!/bin/bash

# Pull down installer script and run it
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O conda_tmp.sh
chmod u+x conda_tmp.sh
./conda_tmp.sh
rm conda_tmp.sh

# Link .condarc to home directory
ln -s -f $(realpath condarc) $HOME/.condarc

