#!/bin/bash
echo "################################################################"
echo "## Autor: Eduardo Amaral - eduardo4maral@protonmail.com       ##"
echo "## You Tube : https://www.youtube.com/faciltech               ##"
echo "## github   : https://github.com/faciltech                    ##"
echo "## Facebook : https://www.facebook.com/faciltech123           ##"
echo "## Linkedin : https://www.linkedin.com/in/eduardo-a-02194451/ ##"
echo "################################################################"
echo ""
echo -e "\e[31m#### SCANEANDO PORTAS ####\e[0m"
portas=$(sudo nmap -sS --open -p- -Pn $1 | grep '^[0-9]' | awk -F'/' '{print $1}'| xargs | sed 's/ /,/g')
printf "\e[1;33;40mPortas abertas\e[0m: \e[1;32m$portas\e[0m"
echo ""
echo "Informações das Portas"
nmap -sC -sV -p $portas -Pn $1
