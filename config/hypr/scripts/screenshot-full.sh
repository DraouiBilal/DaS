#!/bin/bash

filename=~/Pictures/screenshots/screenshot_$(date +%F_%T).png

grim "$filename"
wl-copy < "$filename"
notify-send "Screenshot taken" "Saved to $filename and copied to clipboard"
