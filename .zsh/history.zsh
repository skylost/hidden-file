# History
#
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

setopt histignorealldups #ignore dups
setopt appendhistory     #Append history to the history file (no overwriting)
setopt sharehistory      #Share history across terminals
setopt incappendhistory  #Immediately append to the history file, not just when a term is killed
