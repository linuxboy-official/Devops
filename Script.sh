#!/usr/bin/env bash
YES="-y"
WRK=$(pwd)
DIR="/Desktop/Log.txt"
sudo apt update $YES 1> $WRK$DIR 2> /dev/null && echo -e "1) Package Updated \n"
sudo apt install perl $YES 1>> $WRK$DIR 2> /dev/null && echo -e "2) Perl Installed \n "
sudo apt install cpanminus $YES 1>> $WRK$DIR 2> /dev/null && echo -e "3) CPNMinus Installed \n"
sudo cpanm install SVG 1>> $WRK$DIR 2> /dev/null && echo -e "4) SVG Module in perl Successfully installed.. \n"
echo -e "Installation Process Finish... Good Luck!"
#perl -v | grep 'This is' | awk -F ' ' '{print $3$4$5$6}'
#cpan install SVG &> ./Install_Log.txt && echo "Installation Successful..!"
