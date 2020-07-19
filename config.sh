#!/bin/bash

chmod +x start.sh
clear
echo -e "\e[1;32m######################################################################\e[0m"
echo -e "\e[1;32m#            TP-Link TL-WN722N v3 RTL8188EUS Configurator            #\e[0m"
echo -e "\e[1;32m#                            M.Abdelghany                            #\e[0m"
echo -e "\e[1;32m######################################################################\e[0m"
echo " "
echo -e "[+] \e[1;32mInitializing configuration... \e[0m"
echo -e "[+] \e[1;33mPlease insert your adapter then press any key to continue...\e[0m"
read -p " "
echo -e "[+] \e[1;36mInitializing your adapter...\e[0m"
sudo rmmod r8188eu.ko
echo -e "[+] \e[1;36mDownloading configuration files...\e[0m"
git clone https://github.com/aircrack-ng/rtl8188eus
cd "rtl8188eus"
echo "blacklist r8188eu.ko" > "/etc/modprobe.d/realtek.conf"
echo -e "[+] \e[1;36mInstalling configuration files...\e[0m"
make
sudo make install
echo -e "[+] \e[1;36mConfiguring your adapter...\e[0m"
sudo rmmod r8188eu.ko
sudo modprobe r8188eu
echo " "
echo -e "[+] \e[1;33mPlease remove your adapter and re-insert it then press any key to continue...\e[0m"
read -p " "
echo -e "[+] \e[1;32mYour TP-Link TL-WN722N has been configured successfully!\e[0m"
echo " "
exit



