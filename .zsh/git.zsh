# GIT

export GIT_EDITOR=vim

# ALIAS git
alias g='git'
alias gpush="./script/push"
alias gpull="./script/pull"
alias glog="git log"
alias gdiff="git diff"
alias gs="git status"
alias gss="git status --short"
alias gsp="git status --porcelain"
alias gcm="git commit -m"
alias gca="git commit -a -m"
#
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
