#!/bin/sh
echo -e "\e[34mWitaj w panelu instalatora. Co chcesz zrobić?"
echo 1. Zainstalowac dockera
read -p ': ' option
case $option in
1)
echo install docker
;;
esac