#!/usr/bin/env bash

###############################################################################
# Background programs
###############################################################################

# Monitor/Wallpaper setup
monitor_setup.sh &
change_wallpaper.sh &
# Screen red shifter+location agent
redshift &
/usr/lib/geoclue-2.0/demos/agent &
# Screenshot util
flameshot &
# Document syncing
dropbox start &
# Locker
light-locker &

###############################################################################
# User programs
###############################################################################

# Password management
keepassxc &
# Music
spotify &
spotify-launcher &
# Messaging
discord &
signal-desktop &
# Email
protonmail-bridge &
thunderbird &
