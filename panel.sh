#!/bin/sh
echo "\e[34mWitaj w panelu instalatora. Co chcesz zrobić?"
echo 1. Zainstalowac dockera
read -p ': ' option
case $option in
1)
sh $PWD/django_docker_installer/docker_install.sh
;;
esac