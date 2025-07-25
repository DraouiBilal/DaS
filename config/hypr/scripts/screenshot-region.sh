#!/bin/bash

region=$(slurp)
filename=~/Pictures/screenshots/screenshot_$(date +%F_%T).png

grim -g "$region" "$filename"
grim -g "$region" - | wl-copy
notify-send "Screenshot taken" "Saved to $filename and copied to clipboard"
