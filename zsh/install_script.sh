#!/usr/bin/env zsh

# Directory definitions
base_dir=$(realpath $(dirname "$0"))
if [ -z $ZSH ]; then
  ZSH=$HOME/.oh-my-zsh
fi
rel_plugin_dir=custom/plugins

# Create necessary directories
for dir in $ZSH; do
  mkdir -p $ZSH
done

# Create symlinks
ln -sf $base_dir/zshrc $HOME/.zshrc
ln -sf $base_dir/zprofile $HOME/.zprofile

echo "Installing plugins to ${ZSH}/${rel_plugin_dir}"
for plugin in $(ls -d $base_dir/${rel_plugin_dir}/*); do
  echo "Installing plugin ${plugin}"
  ln -sf ${plugin} ${ZSH}/${rel_plugin_dir}
done

exit 0

