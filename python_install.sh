#!/bin/sh
if ! command python --version >/dev/null || ! command python3 --version >/dev/null
then
    sudo apt-get install python3.8
fi
if ! command pip --version >/dev/null || ! command pip3 --version >/dev/null
then
    sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    if ! command python3 get-pip.py >/dev/null
    then 
        command python get-pip.py
    fi
fi
python() { python3 "$@"; }
export -p python
pip() { pip3 "$@"; }
export -p pip
pip install -r $PWD/django_docker_installer/requirements.txt
echo Python i wszystkie niezbędne składniki zaostały zainstalowane 
read -r -s -p $'\e[94mnacisnij enter by kontynuowac\n\e[39m'