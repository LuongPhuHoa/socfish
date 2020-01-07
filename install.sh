#!/bin/bash

# MIT License
#
# Copyright (C) 2019, Entynetproject. All Rights Reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

RS="\033[1;31m"
YS="\033[1;33m"
WS="-e \033[1;77m"
CE="\033[0m"

printf '\033]2;install.sh\a'

if [[ $EUID -ne 0 ]]
then
   sleep 1
   echo -e ""$RS"["$CE"-"$RS"] This script must be run as root!"$CE"" 1>&2
   sleep 1
   exit
fi

if [[ -d ~/socfish ]]
then
sleep 0
else
cd ~
{
git clone https://github.com/entynetproject/socfish.git
} &> /dev/null
fi

sleep 0.5
clear
sleep 0.5
cd ~/socfish
printf "\033[1;32m  ____            \033[0m\033[1;77m _____ _     _     \033[0m\n"
printf "\033[1;32m / ___|  ___   ___\033[0m\033[1;77m|  ___(_)___| |__  \033[0m\n"
printf "\033[1;32m \___ \ / _ \ / __|\033[0m\033[1;77m |_  | / __| '_ \ \033[0m\n"
printf "\033[1;32m  ___) | (_) | (__\033[0m\033[1;77m|  _| | \__ \ | | |\033[0m\n"
printf "\033[1;32m |____/ \___/ \___|\033[0m\033[1;77m_|   |_|___/_| |_|\033[0m\n"
echo

sleep 1
echo -e "\033[1;77m[\033[0m\033[1;33m*\033[0m\033[1;77m] Installing dependencies...\033[0m"
sleep 1

{
pkg update
pkg -y install git
pkg -y install curl
pkg -y install php
pkg -y install openssh
pkg -y install unzip
pkg -y install wget
apt-get update
apt-get -y install git
apt-get -y install curl
apt-get -y install php
apt-get -y install openssh-server
apt-get -y install unzip
apt-get -y install wget
apk update
apk add git
apk add curl
apk add php
apk add openssh
apk add unzip
apk add wget
pacman -Sy
pacman -S --noconfirm git
pacman -S --noconfirm curl
pacman -S --noconfirm php
pacman -S --noconfirm openssh
pacman -S --noconfirm unzip
pacman -S --noconfirm wget
zypper refresh
zypper install -y git
zypper install -y curl
zypper install -y php
zypper install -y openssh
zypper install -y unzip
zypper install -y wget
yum -y install git
yum -y install curl
yum -y install php
yum -y install openssh
yum -y install unzip
yum -y install wget
dnf -y install git
dnf -y install curl
dnf -y install php
dnf -y install openssh
dnf -y install unzip
dnf -y install wget
eopkg update-repo
eopkg -y install git
eopkg -y install curl
eopkg -y install php
eopkg -y install openssh
eopkg -y install unzip
eopkg -y install wget
xbps-install -S
zbps-install -y git
xbps-install -y curl
xbps-install -y php
xbps-install -y openssh
xbps-install -y unzip
xbps-install -y wget
} &> /dev/null

{
cd ~/socfish/bin
cp socfish /usr/local/bin
chmod +x /usr/local/bin/socfish
cp socfish /bin
chmod +x /bin/socfish
cp socfish /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/usr/bin/socfish
} &> /dev/null

sleep 1
echo -e "\033[1;32m[\033[0m\033[1;77m+\033[0m\033[1;32m] Successfully installed!\033[0m"
sleep 1
