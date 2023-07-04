#!/bin/bash

# Directory definitions
BASE_DIR=$(realpath $(dirname "$0"))
AUTOSTART_DIR=$XDG_CONFIG_HOME/autostart

# Create necessary directories
mkdir -p $AUTOSTART_DIR

ln -sf /usr/share/applications/discord.desktop "$AUTOSTART_DIR/"
ln -sf /usr/share/applications/dropbox.desktop "$AUTOSTART_DIR/"
ln -sf /usr/share/applications/org.flameshot.Flameshot.desktop "$AUTOSTART_DIR/"
ln -sf /usr/share/applications/org.keepassxc.KeePassXC.desktop "$AUTOSTART_DIR/"
ln -sf /usr/share/applications/protonmail-bridge.desktop "$AUTOSTART_DIR/"
ln -sf /usr/share/applications/signal-desktop.desktop "$AUTOSTART_DIR/"
ln -sf /usr/share/applications/spotify-launcher.desktop "$AUTOSTART_DIR/"
ln -sf /usr/share/applications/thunderbird.desktop "$AUTOSTART_DIR/"

for dtfile in $(ls $BASE_DIR/*.desktop); do
  ln -sf $dtfile "$AUTOSTART_DIR/"
done

exit 0
