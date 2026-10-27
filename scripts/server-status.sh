#!/usr/bin/env bash

SESSION="mcs"

if screen -list | grep -qE "[0-9]+\.${SESSION}[[:space:]]"; then
    echo "Minecraft server screen session exists."
    screen -list | grep "$SESSION"
else
    echo "Minecraft server screen session is not running."
fi
