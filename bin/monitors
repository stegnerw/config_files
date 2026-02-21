#!/bin/sh

# Auto-detect connected monitors and configure via xrandr

outputs=$(xrandr --query | awk '/ connected/ {print $1}')
count=$(echo "$outputs" | wc -l)

if [ "$count" -eq 0 ]; then
  printf "ERROR: No connected monitors detected\n" >&2
  exit 1
fi

mon1=$(echo "$outputs" | head -1)
xrandr --output "$mon1" --primary --auto

if [ "$count" -ge 2 ]; then
  mon2=$(echo "$outputs" | sed -n '2p')
  xrandr --output "$mon2" --right-of "$mon1" --auto
else
  mon2=""
fi

# Write to X resources database

xrdb -merge <<EOF
display.mon1: $mon1
display.mon2: $mon2
EOF

# Restart i3 to pick up any changes

i3-msg restart
