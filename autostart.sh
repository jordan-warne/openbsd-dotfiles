#!/usr/bin/env bash

# 1. Environment variables
export LANG=en_US.UTF-8

# 2. Merge Xresources
xrdb -merge "$HOME/.Xresources"

# 3. Display setup
xsetroot -solid dimgrey
xset b off
xrandr --dpi 96

# 4. Auto-lock screen
# Locks after 5 minutes of inactivity using xlock
xautolock -time 5 -locker "xlock -mode qix" &

# 5. Launch terminal status bars
xterm -name desktop-id -class desktop-id -e "$HOME/.local/bin/desktop-id" &
xterm -name date-bar -class date-bar -e "$HOME/.local/bin/date-bar" &
