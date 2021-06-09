#!/bin/bash
git clone https://github.com/fox-it/mitm6.git /opt/mitm6
python3 /opt/mitm6/setup.py install

git clone https://github.com/SecureAuthCorp/impacket.git /opt/impacket
python3 /opt/impacket/setup.py install
