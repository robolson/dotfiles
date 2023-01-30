# Needed for docker pull to work
export AWS_PROFILE='rob.olson'

alias awsmfa="sh ~/bin/aws-get-credentials.sh -u rob.olson"

function tcs(){ for service in "$@"; do teads-central crane wrapper start $service; done }

# Autocompletion for sbt. I am manually adding this because I am not loading
# the sbt oh-my-zsh plugin which only contains some aliases that I do not want.
fpath=($fpath $ZSH/plugins/sbt)
# Autocompletion for sbtn; added by the sbt installSbtn task
fpath=($fpath $HOME/.sbt/1.0/completions)

# export JAVA_HOME to see if it makes IntelliJ happy with api-domains
# I am not sure if this still needed, try to remove next time I am
# working with api-domains
export JAVA_HOME="$HOME/.sdkman/candidates/java/17.0.4.1-zulu"

# Add keg-only go install to PATH
PATH="/opt/homebrew/opt/go@1.17/bin:$PATH"

# Add GOBIN to path
PATH="$HOME/go/bin:$PATH"

export PATH
