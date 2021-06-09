#!/bin/bash

# Create directory for random scripts, then copy MSF rc file
cd /opt
mkdir scripts && cd scripts
wget https://raw.githubusercontent.com/jtho162/dotfiles/main/enum.rc

# Runs RustScan and nmap on specified hosts, for consistency and laziness
echo "
#!/bin/bash
# Run Rustscan and NMAP on host(s), then output NMAP results to file.
read -p "List CIDRs, IPs, or hosts to be scanned " IPvar
	rustscan -a $IPvar -u 5000 -b 2000 -- -A -oA scan
" > scan.sh
chmod +x scan.sh

# Fixes corrupted ZSH history
wget https://github.com/shapeshed/dotfiles/blob/master/bin/zsh_history_fix

# Clones and unpacks PHP reverse shell
wget http://pentestmonkey.net/tools/php-reverse-shell/php-reverse-shell-1.0.tar.gz
tar xzf php-reverse-shell-1.0.tar.gz
rm php-reverse-shell-1.0.tar.gz

# Clones nmap-grep
cd /opt
wget https://raw.githubusercontent.com/jtho162/Random-Tools/master/nmap-grep.sh
chmod +x nmap-grep.sh
