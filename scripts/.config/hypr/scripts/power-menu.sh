#!/bin/bash

options=" Shutdown\n Reboot\n⏾ Suspend\n Logout"

choice=$(echo -e "$options" | wofi --dmenu --prompt "Power Menu:" --line-height 40 --font "MesloLGS Nerd Font 14" --no-sort)

case $choice in
    " Shutdown")
        systemctl poweroff
        ;;
    " Reboot")
        systemctl reboot
        ;;
    "⏾ Suspend")
        systemctl suspend
        ;;
    " Logout")
        hyprctl dispatch exit
        ;;
esac
