#!/usr/bin/bash

echo -e "\n\033[1;36mPROOT-DISTRO UBUNTU XFCE4 Installer \033[0m\n\n"
echo -e "\n\033[1;36mSCRIPIT 2/2\033[0m\n\n"
sleep 1
echo -e "\033[1;36mWait...\033[0m\n"
sleep 3
echo -e "\033[1;36mInstalling XFCE4\033[0m\n\n"
apt update
apt install -y xfwm4 xfce4-panel xfce4-settings xfce4-session xfce4-terminal xfdesktop4 xfce4-taskmanager dbus-x11 elementary-xfce-icon-theme --no-install-recommends
apt install -y thunar geany mousepad tumbler tumbler-plugins-extra ffmpegthumbnailer pulseaudio xfce4-pulseaudio-plugin xfce4-whiskermenu-plugin
apt-get install -y audacious parole ristretto

echo '''#!/bin/env bash
DISPLAY=:1 startxfce4
''' >> startdesktop

chmod +x startdesktop
mv startdesktop /bin/

echo -e "\n\n\033[1;36mFinish!\033[0m\n\n"
