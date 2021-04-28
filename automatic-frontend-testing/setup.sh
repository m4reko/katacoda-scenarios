#!/bin/bash

/usr/bin/python3.7 -m pip install --upgrade pip
ln -sf /usr/bin/python3.7 /usr/bin/python
ln -sf /usr/local/bin/pip3.7 /usr/local/bin/pip

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
apt update && apt-get -f -y install
