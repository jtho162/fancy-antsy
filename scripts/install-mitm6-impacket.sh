#!/bin/bash
pipx install mitm6

git clone https://github.com/SecureAuthCorp/impacket.git /opt/impacket
python3 /opt/impacket/setup.py install
