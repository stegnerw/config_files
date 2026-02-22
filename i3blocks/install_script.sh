#!/bin/bash
BASE_DIR="$(realpath "$(dirname "$0")")"
CONFIG_DIR="$HOME/.config/i3blocks"
ln -sfT "$BASE_DIR" "$CONFIG_DIR"
