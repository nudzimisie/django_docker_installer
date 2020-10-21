#!/bin/sh
echo "\e[34mWitaj w panelu instalatora. Co chcesz zrobić?\e39m"
echo 1. Zainstalowac dockera
echo 2. Wygenerować klucze ssh
echo 0. Zakończ
while read -p ': ' option
do
case $option in
1)
sh $PWD/django_docker_installer/docker_install.sh
;;
2)
sh $PWD/django_docker_installer/sshgen.sh
;;
0)
exit 0
;;
esac
done