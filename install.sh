#! /bin/bash

# 
#            --------------------------------------------------
#                          Social Fisher (SocFish)                
#            --------------------------------------------------
#          Copyright (C) <2019>  <Entynetproject (Ivan Nikolsky)>
#
#        This program is free software: you can redistribute it and/or modify
#        it under the terms of the GNU General Public License as published by
#        the Free Software Foundation, either version 3 of the License, or
#        any later version.
#
#        This program is distributed in the hope that it will be useful,
#        but WITHOUT ANY WARRANTY; without even the implied warranty of
#        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#        GNU General Public License for more details.
#
#        You should have received a copy of the GNU General Public License
#        along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
#    About Author :   
#    Founder   : Entynetproject (Ivan Nikolsky)
#    Site      : http://entynetproject.simplesite.com/
#    Instagram : @entynetproject 
#    Twitter   : @entynetproject
#    Email     : entynetproject@gmail.com
#

RS="\033[1;31m"
YS="\033[1;33m"
CE="\033[0m"

if [[ $EUID -ne 0 ]]
then
   echo "["$RS"*"$CE"] "$RS"This script must be run as "$YS"root"$C"" 1>&2
   exit
fi

if [[ -d ~/socfish ]]
then
cd ~/socfish/bin
{
cp socfish /bin
cp socfish /usr/local/bin
chmod +x /bin/socfish
chmod +x /usr/local/bin/socfish
cd ~/socfish
} &> /dev/null
sleep 0.5
echo
cat banner/banner.txt
echo

if [[ -f /etc/socfish.conf ]]
then

CONF="$( cat /etc/socfish.conf )"
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else 
echo ""$BS"Installing dependencies..."$CE""
pkg update
pkg install bash
pkg install curl
pkg install php
pkg install openssh
pkg install unzip
pkg install wget
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install bash
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

if [[ "$CONF" = "intel" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install bash
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

else

read -p $'Select your architecture (amd/intel/arm) ' CONF
if [[ "$CONF" = "" ]]
then
exit
else
echo "$CONF" >> /etc/socfish.conf
fi
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else 
echo ""$BS"Installing dependencies..."$CE""
pkg update
pkg install bash
pkg install curl
pkg install php
pkg install openssh
pkg install unzip
pkg install wget
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install bash
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

if [[ "$CONF" = "intel" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install bash
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi
fi

else
cd ~
{
git clone https://github.com/entynetproject/socfish.git
cd ~/socfish/bin
cp socfish /bin
cp socfish /usr/local/bin
chmod +x /bin/socfish
chmod +x /usr/local/bin/socfish
cd ~/socfish
} &> /dev/null
sleep 0.5
echo
cat banner/banner.txt
echo

if [[ -f /etc/socfish.conf ]]
then

CONF="$( cat /etc/socfish.conf )"
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else 
echo ""$BS"Installing dependencies..."$CE""
pkg update
pkg install bash
pkg install curl
pkg install php
pkg install openssh
pkg install unzip
pkg install wget
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install bash
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

if [[ "$CONF" = "intel" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install bash
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

else

read -p $'Select your architecture (amd/intel/arm) ' CONF
if [[ "$CONF" = "" ]]
then
exit
else
echo "$CONF" >> /etc/socfish.conf
fi
sleep 1

if [[ "$CONF" = "arm" ]]
then
if [[ -d /System/Library/CoreServices/SpringBoard.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else 
echo ""$BS"Installing dependencies..."$CE""
pkg update
pkg install bash
pkg install curl
pkg install php
pkg install openssh
pkg install unzip
pkg install wget
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install bash
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi

if [[ "$CONF" = "amd" ]]
then
if [[ -d /System/Library/CoreServices/Finder.app ]]
then
echo ""$BS"Installing dependencies..."$CE""
else
echo ""$BS"Installing dependencies..."$CE""
apt-get update
apt-get install bash
apt-get install curl
apt-get install php
apt-get install openssh
apt-get install unzip
apt-get install wget
fi
fi
fi

{
pip3 install setuptools
pip3 install -r requirements.txt
} &> /dev/null

fi
