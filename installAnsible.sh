#!/bin/bash
#apt install python3-virtualenv
function package_exists() {
    return dpkg -l "$1" &> /dev/null
}

if ! package_exists python3-virtualenv ; then
    echo "Please install python3-virtualenv!"
fi

virtualenv .venv
source .venv/bin/activate
pushd .venv
pip3 install ansible
ansible --version
which ansible
exit 0
