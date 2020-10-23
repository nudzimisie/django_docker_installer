#!/bin/sh
git fetch
git merge origin/master
if ! command cat requirements.txt >/dev/null
then
    echo -e "\e[41m Nie znaleziono pliku requirements.txt. \n Zignoruj kompunikat jeśli instalowana aplikacja nie wymaga dodatkowych pakietów python. \e[49m"
else
    if ! command pip install -r requirements.txt >/dev/null
    then
        echo -e "\e[41m Nie można zainstalować pakietów python. \n Możliwe, że nie ma zainstalowanego instalatora pip. \n Przeprowadź procedurę instalacyjną python.\e[49m"
    fi
fi