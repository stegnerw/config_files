#!/usr/bin/env bash
# Shared helpers for i3blocks scripts.
# Source this at the top of each block script:
#   source "$(dirname "$0")/helper.bash"

export COLOR_GREEN="#a3be8c"
export COLOR_YELLOW="#ebcb8b"
export COLOR_RED="#bf616a"
export COLOR_WHITE="#ffffff"
export COLOR_LGRAY="#a0a0a0"
export COLOR_DGRAY="#808080"

# Send a dunst notification with consistent formatting.
# Usage: notify "Title" "Body"
notify() {
  local title="$1"
  local body="$2"
  # -r requires a numeric ID for replacement; hash the block name
  local replace_id
  replace_id=$(( $(echo "${BLOCK_NAME:-i3blocks}" |
    cksum | awk '{print $1}') % 2147483647 ))
  notify-send -t 5000 -r "$replace_id" -a "i3blocks" -u critical \
    "$title" "$body"
}

# Return a hex color based on value and thresholds.
# Usage: threshold_color <value> <warn> <crit> [invert]
#   Normal:   value < warn = COLOR_GREEN, warn..crit = COLOR_YELLOW, >= crit = COLOR_RED
#   Inverted: value > warn = COLOR_GREEN, warn..crit = COLOR_YELLOW, <= crit = COLOR_RED
# Thresholds are inclusive on the critical end.
threshold_color() {
  local value="$1"
  local warn="$2"
  local crit="$3"
  local invert="${4:-}"

  awk -v val="$value" -v warn="$warn" -v crit="$crit" \
    -v inv="$invert" -v g="$COLOR_GREEN" -v y="$COLOR_YELLOW" -v r="$COLOR_RED" \
    'BEGIN {
        s = (inv != "") ? -1 : 1
        if (s * val >= s * crit) print r
        else if (s * val >= s * warn) print y
        else print g
    }'
}
