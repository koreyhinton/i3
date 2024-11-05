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
    nvidia \
    dbus \
    lightdm \
    lightdm-gtk3-greeter

# Set up dbus as service 
sudo ln -s /etc/sv/dbus /var/service/dbus 

# set up lightdm as a service
sudo ln -s /etc/sv/lightdm /var/service/lightdm

# Set up git info
git config --global user.name "kaseyhinton"
git config --global user.email "20712428+kaseyhinton@users.noreply.github.com"


echo "exec i3" >> ~/.xinitrc

startx
