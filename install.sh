#!/bin/bash
clear
#install the apache2 server
apt-get install apache2
clear
#to make a sending directory
cd /var/www/html
rm -rf *
mkdir sender
cd -
echo
#command copy and file permission
cp -r send /bin
cd /bin
chmod +x send
cd -
clear
#style
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
LIGHTPURPLE='\033[1;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
DEFAULT='\033[0m'

COLORS=( $RED $LIGHTRED $GREEN $YELLOW $BLUE $PURPLE $CYAN $WHITE )

for c in "${COLORS[@]}";do
    printf "\r $c Installing... $DEFAULT "
    sleep 0.5
done

echo -e "\tInstallation is completed \n"
echo -e "\tPlease type the 'send' -command to use the linux shareit...\n"
