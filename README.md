pkg update

pkg install proot-distro

proot-distro install ubuntu-20.04

proot-distro login ubuntu-20.04

apt update

apt upgrade

apt install xfwm4 xfce4-panel xfce4-settings xfce4-session xfce4-terminal xfdesktop4 xfce4-taskmanager thunar dbus-x11 elementary-xfce-icon-theme --no-install-recommends

apt install tigervnc-standalone-server

apt install firefox
apt install pulseaudio
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
