#!/bin/bash
apt-get update
cd /tmp
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py

python3 -m pip install --user pipx
python3 -m pipx ensurepath
