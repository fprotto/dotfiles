#!/bin/bash

CONNECTED=$(bluetoothctl info | grep -c "Connected: yes")

if [ "$CONNECTED" -gt 0 ]; then
    echo "󰂯"
else
    echo "󰂲"
fi
