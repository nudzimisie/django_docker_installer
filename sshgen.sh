#!/bin/sh
read -p 'nadaj nazwe klucza: [domyslna wartosc: id_rsa]' sshkey
sshkey=${sshkey:-id_rsa}
echo 'Klucz zostanie wygenerowany w domyslnej lokalizacji [/root/.ssh]'
read -p 'Podaj inna sciezke jesli chcesz ja zmienic?: ' sshpath
sshpath=${sshpath:-/root/.ssh}
echo Generowanie klucza ssh
ssh-keygen -f $sshpath/$sshkey
echo Skopiuj ponizszy klucz i wklej w swoim serwisie git
echo '[przykladowo: https://github.com/settings/keys]'
echo
cat $sshpath/$sshkey.pub
echo
read -r -s -p $'\e[44m nacisnij enter by kontynuowac \n\e[49m'