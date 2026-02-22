#!/usr/bin/env bash
# Shared helpers for i3blocks scripts.
# Source this at the top of each block script:
#   source "$(dirname "$0")/helper.bash"

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
#   Normal:   value < warn = green, warn..crit = yellow, >= crit = red
#   Inverted: value > warn = green, warn..crit = yellow, <= crit = red
# Thresholds are inclusive on the critical end.
threshold_color() {
  local value="$1"
  local warn="$2"
  local crit="$3"
  local invert="${4:-}"

  local green="#a3be8c"
  local yellow="#ebcb8b"
  local red="#bf616a"

  awk -v val="$value" -v warn="$warn" -v crit="$crit" \
    -v inv="$invert" -v g="$green" -v y="$yellow" -v r="$red" \
    'BEGIN {
        s = (inv != "") ? -1 : 1
        if (s * val >= s * crit) print r
        else if (s * val >= s * warn) print y
        else print g
    }'
}
