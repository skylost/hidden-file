# Personal aliases
#
alias cp='cp -i'
alias ll='ls -lh'
alias l='ls -CF'
alias rm='rm -I'
alias mv='mv -i'
alias zmv='rsync --recursive --remove-source-files --progress'
alias emptydirs='find . -type d -empty -print'
alias -g M=' 2>&1 | more'
alias luksopen='sudo cryptsetup luksOpen'
alias luksclose='sudo cryptsetup luksClose'
alias rs='rspec spec'
alias dupdate='sudo apt-get update && sudo apt-get upgrade'
alias lsiptables='sudo iptables -nvL --line-numbers'
alias cliptables='sudo iptables -P INPUT ACCEPT'
alias ssudo='sudo sh -c '
alias du1="du -ah --max-depth=1 | sort -h"
#alias susp="sudo true && slock&; sudo pm-suspend"
#alias shot="cd /tmp && scrot -s -e 'feh \$f && rm \$f'"

if [ -x /usr/bin/dircolors ]; then 
  eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'    
  alias vdir='vdir --color=auto'  
  alias grep='grep --color=auto'  
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  #[ -x /usr/bin/colordiff ] && alias diff='colordiff'
  alias less='less -R'
fi
