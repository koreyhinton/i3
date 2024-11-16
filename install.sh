#!/bin/bash

apt-get update -y
yes | apt-get install \
    xorg \
    i3 \
    i3status \
    dmenu

echo "exec i3" >> ~/.xinitrc

startx
