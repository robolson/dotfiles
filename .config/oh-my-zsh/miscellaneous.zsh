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

# Use SSL from Homebrew with Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/homebrew/opt/openssl@3"

# export JAVA_HOME to see if it makes IntelliJ happy
export JAVA_HOME="/Users/rob.olson/.sdkman/candidates/java/17.0.5-zulu"

# Add keg-only go install to PATH
PATH="/opt/homebrew/opt/go@1.17/bin:$PATH"

# Add GOBIN to path
PATH="$HOME/go/bin:$PATH"

# Add $HOME/bin to path
PATH="$HOME/bin:$PATH"

export PATH
