#!/usr/bin/bash

echo -e "\n\033[1;36mPROOT-DISTRO UBUNTU XFCE4 Installer \033[0m\n\n"
echo -e "\n\033[1;36mSCRIPIT 1/2\033[0m\n\n"
sleep 1
echo -e "\033[1;36mWait...\033[0m\n"
sleep 3
echo -e "\033[1;36mInstalling\033[0m\n\n"
apt install x11-repo
apt update
apt install -y tigervnc xorg-xhost pulseaudio proot-distro
proot-distro install ubuntu

echo '''#!/usr/bin/bash
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
proot-distro login ubuntu
''' >>  $PREFIX/bin/ubuntu

echo '''#!/usr/bin/bash
vncserver -geometry 1280x720 -noxstartup -listen tcp :1
DISPLAY=:1 xhost +
''' >> $PREFIX/bin/startvnc

chmod +x $PREFIX/bin/ubuntu 
chmod +x $PREFIX/bin/startvnc

echo -e "\n\n\033[1;36mFinish!\033[0m\n\n"
