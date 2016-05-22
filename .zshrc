# loading config
for config_file ($HOME/.zsh/*.zsh) source $config_file

# zshoptions
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt hist_ignore_dups
setopt inc_append_history
setopt extended_history

# environment variables
: ${LANG:=$(locale -a |grep -e fr_FR -e en_US |grep utf8|head -n 1)}
export LANG
export PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH

export EDITOR=/usr/bin/vim

# Automatic files handling
autoload zsh-mime-setup
zsh-mime-setup 2>/dev/null
