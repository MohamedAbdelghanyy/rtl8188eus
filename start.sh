#!/bin/bash

clear
echo -e "\e[1;32m######################################################################\e[0m"
echo -e "\e[1;32m#            TP-Link TL-WN722N v3 RTL8188eu Configurator             #\e[0m"
echo -e "\e[1;32m#                            M.Abdelghany                            #\e[0m"
echo -e "\e[1;32m######################################################################\e[0m"
echo " "
echo -e "[+] \e[1;36mInitializing...\e[0m"
sudo rmmod r8188eu.ko
sudo modprobe r8188eu
echo -e "[+] \e[1;33mPlease insert your adapter then press any key to continue...\e[0m"
read -p " "
echo -e "[+] \e[1;32mYour adapter is ACTIVE now!\e[0m"
echo " "
exit



