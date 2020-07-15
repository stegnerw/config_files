#!/bin/sh

# Kill any pulseaudio instance
pulseaudio -k

# Reload alsa
sudo alsa force-reload

