# remap ctrl+u to delete backward from cursor instead of remove entire line
bindkey \^U backward-kill-line

# Use nvim everywhere:
# [reminder] vim alias is in aliases.zsh
export GIT_EDITOR=nvim

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='/usr/bin/vim'
else
  export EDITOR='nvim'
fi

# 1 second delay to give webcam time to warm up
export LOLCOMMITS_DELAY=1

# Increase max size of history file
HISTSIZE=1000000
SAVEHIST=1000000

# Add $HOME/bin to path
PATH="$HOME/bin:$PATH"

export PATH
