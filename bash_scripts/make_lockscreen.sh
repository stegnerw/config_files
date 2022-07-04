#!/bin/bash
# Code from: hund0b1 on github.com

# Define the path to the image
img="$HOME/.cache/lock_screen.png"

# Delete the previously taken image
rm -f $img

# Take screenshot
scrot $img

# Pixelate image

convert $img -scale 5% -scale 2000% $img
# Add "LOCKED" annotation
convert $img \
  -fill "red" -pointsize 256 \
  -font "DejaVu-Serif-Book" \
  -gravity center -annotate +0+0 "LOCKED" \
  $img

# Print the path to the created image
echo $img
