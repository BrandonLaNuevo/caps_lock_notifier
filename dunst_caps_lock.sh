#!/usr/bin/env bash

sleep 0.2

value="$(xset q | grep -i caps | cut -c 22-24)"

if [ $value == "on" ];
    then
        output="caps lock is on"
    else
        output="caps lock is off"
fi

notify-send -t 600 "$output"
