#!/usr/bin/env bash

echo -e "\n\033[1;36m XFCE4 Installer \033[0m\n\n"
sleep 1
echo -e "\033[1,36mWait...\033[0m\n"
sleep 3
echo -e "\033[1,36mInstalling XFCE4\033[0m\n\n"
apt update
apt install xfwm4 xfce4-panel xfce4-settings xfce4-session xfce4-terminal xfdesktop4 xfce4-taskmanager dbus-x11 elementary-xfce-icon-theme --no-install-recommends
apt install thunar
apt install tumbler tumbler-plugins-extra ffmpegthumbnailer
cat > /bin/startdesktop <<- _EOF_
#!/bin/env bash

DISPLAY=:1 startxfce4
_EOF_
chmod +x /bin/startdesktop
echo -e "\n\n\033[1,36mFinish!\033[0m\n\n"
