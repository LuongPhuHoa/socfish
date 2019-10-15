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
cd ~/socfish
{
cp bin/socfish /usr/local/bin
chmod +x /usr/local/bin/socfish
cp bin/socfish /bin
chmod +x /bin/socfish
} &> /dev/null
else
cd ~
{
git clone https://github.com/entynetproject/socfish.git
cd  ~/socfish
cp bin/socfish /usr/local/bin
chmod +x /usr/local/bin/socfish
cp bin/socfish /bin
chmod +x /bin/socfish
} &> /dev/null
fi
