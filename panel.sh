#!/bin/sh
echo "\e[34mWitaj w panelu instalatora. Co chcesz zrobić?\e[39m"
echo 1. Zainstalowac dockera
echo 2. Wygenerować klucze ssh
echo 3. Zainstaluj pythona i niezbędne składniki
echo 9. Aktualizuj aplikacje
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
9)
read 'Którą aplikację chcesz aktualizować? [domyślnie: pakiet instalacyjny]' app
app=${app:-django_docker_installer}
sh $PWD/$app/update.sh
;;
0)
exit 0
;;
esac
done