#!/bin/bash
BASE_DIR="$(realpath $(dirname "$0"))"
CONFIG_DIR="$HOME/.config/i3"
ln -sfT "$BASE_DIR" "$CONFIG_DIR"
