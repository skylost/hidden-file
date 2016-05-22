# Git

export GIT_EDITOR=vi

# ALIAS git
alias g='git'
alias gs="git status"
alias gss="git status --short"
alias gsp="git status --porcelain"
alias gcm="git commit -m"
alias gca="git commit -a -m"
alias glog="git log"
alias gdiff="git diff"
alias gshow="git show"

#

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#function parse_git_branch {
#  git rev-parse --git-dir &> /dev/null
#  git_status="$(git status 2> /dev/null)"
#  branch_pattern="^# On branch ([^${IFS}]*)"
#  remote_pattern="# Your branch is (.*) of"
#  diverge_pattern="# Your branch and (.*) have diverged"
#
#  if [ ! ${git_status} =~ "working directory clean" ]; then
#    state="${RED}⚡"
#  fi
#  # add an else if or two here if you want to get more specific
#  if [ ${git_status} =~ ${remote_pattern} ]; then
#    if [ ${BASH_REMATCH[1]} == "ahead" ]; then
#      remote="${YELLOW}↑"
#    else
#      remote="${YELLOW}↓"
#    fi
#  fi
#  if [ ${git_status} =~ ${diverge_pattern} ]; then
#    remote="${YELLOW}↕"
#  fi
#  if [ ${git_status} =~ ${branch_pattern} ]; then
#    branch=${BASH_REMATCH[1]}
#    echo " (${branch})${remote}${state}"
#  fi
#}
#
#precmd() {
#  autoload -U colors && colors
#  PROMPT="%{$fg[blue]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%}:%{$fg[cyan]%}$(parse_git_branch) %{$fg[yellow]%}%~ %{$reset_color%}%% "
#}
