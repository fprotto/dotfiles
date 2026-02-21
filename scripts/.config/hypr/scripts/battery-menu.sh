#!/bin/bash

options="🔋 Performance\n⚡ Balanced\n💤 Power Save"

choice=$(echo -e "$options" | wofi --dmenu --prompt "Battery Menu:" \
    --line-height 40 --font "MesloLGS Nerd Font 14" --no-sort)

case $choice in
    "🔋 Performance")
        sudo tlp ac
        notify-send -t 2000 "Battery Mode" "Performance mode ⚡"
        ;;
    "⚡ Balanced")
        sudo tlp bat
        notify-send -t 2000 "Battery Mode" "Balanced mode 🔋"
        ;;
    "💤 Power Save")
        sudo tlp auto
        notify-send -t 2000 "Battery Mode" "Power Save mode 💤"
        ;;
esac
