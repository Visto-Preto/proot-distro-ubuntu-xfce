#!/usr/bin/bash

echo -e "\n\033[1;36mPROOT-DISTRO UBUNTU XFCE4 Installer \033[0m\n\n"
echo -e "\n\033[1;36mSCRIPIT 2/2\033[0m\n\n"
sleep 1
echo -e "\033[1;36mWait...\033[0m\n"
sleep 3
echo -e "\033[1;36mInstalling XFCE4\033[0m\n\n"
apt update
apt install -y xfce4 xfce4-panel-profiles xfce4-whiskermenu-plugin xfce4-taskmanager xfce4-places-plugin mugshot dbus-x11
apt install -y ristretto mousepad parole thunar geany tumbler tumbler-plugins-extra ffmpegthumbnailer pulseaudio xfce4-pulseaudio-plugin

apt install -y software-properties-common
apt install -y tzdata
apt install locales

#dpkg-reconfigure locales

echo '''#!/bin/bash
DISPLAY=:1 startxfce4
''' >> /bin/desktop

chmod +x /bin/desktop

echo -e "\n\n\033[1;36mFinish!\033[0m\n\n"
