#!/bin/bash
apt install at -y
echo 'exec /bin/zsh' > source
at now -f source
