#!/bin/bash
echo "
## grep aliases
alias grep="grep --color=auto"
alias ngrep="grep -n"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

## List open ports
alias ports="netstat -tulanp"

## Extract file, example. "ex package.tar.bz2"
ex() {
  if [[ -f $1 ]]; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz)  tar xzf $1 ;;
      *.bz2)     bunzip2 $1 ;;
      *.rar)     rar x $1 ;;
      *.gz)      gunzip $1  ;;
      *.tar)     tar xf $1  ;;
      *.tbz2)    tar xjf $1 ;;
      *.tgz)     tar xzf $1 ;;
      *.zip)     unzip $1 ;;
      *.Z)       uncompress $1 ;;
      *.7z)      7z x $1 ;;
      *)         echo $1 cannot be extracted ;;
    esac
  else
    echo $1 is not a valid file
  fi
}

# alias cd='cd ; ls -arthl'

# ex() is copied from https://github.com/Raikia/Kali-Setup/blob/master/kali.py
#Add here..

# Docker aliases
alias dockerkillallimages='docker rmi $(docker images -a -q)'
alias dockerkillall='docker kill $(docker ps -q)'

# docker exec -it "$@" bash
dockergoto () {
docker exec -it "$@" /bin/sh
}

# enable auto-suggestions based on the history
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    # change suggestion color
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
fi

# enable command-not-found if installed
if [ -f /etc/zsh_command_not_found ]; then
    . /etc/zsh_command_not_found
fi

# user defined aliases
alias discovery='/opt/discover/discover.sh'

# Scanning and enumerating
alias parse='/opt/nmapgrep/nmap-grep.sh scan.gnmap --out-dir . --no-up'
alias enum='mkdir logs && msfconsole -r /opt/scripts/enum.rc'
alias scan='/opt/scripts/scan.sh'

# Fix corrupted ZSH history file
alias fixzsh='/opt/scripts/zsh_history_fix'

# Update all the things
alias sysupdate='apt update && apt upgrade -y'

# Because words are hard
alias celar='clear'

" >> ~/.zshrc
