#!/bin/sh
if ! command python --version >/dev/null
then
if ! command python3 --version >/dev/null
then
sudo apt-get install python3.8
else
if ! command pip --version >/dev/null
then
if ! command pip3 --version >/dev/null
then
sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
fi
fi
fi
fi
python() { python3 "$@"; }
export -f python
pip() { pip3 "$@"; }
export -f pip
pip install -R requirements.txt
echo Python i wszystkie niezbędne składniki zaostały zainstalowane 
read -t 20 -r -s -p $'\e[94mnacisnij enter lub poczekaj 20s by kontynuowac\n\e[39m'