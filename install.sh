#!/bin/bash

xbps-install -Su \
    void-repo-nonfree \
    void-repo-multilib-nonfree \
    void-repo-multilib \
    neofetch \
    vpm \
    git \
    curl \
    alacritty \
    xorg \
    i3 \
    i3status \
    dmenu \
    nvidia

echo "exec i3" >> ~/.xinitrc

startx
