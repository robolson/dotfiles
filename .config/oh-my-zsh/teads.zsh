# Needed for docker pull to work
export AWS_PROFILE='rob.olson.mfa'

alias awsmfa="sh ~/bin/aws-get-credentials.sh -u rob.olson"

# export JAVA_HOME to see if it makes IntelliJ happy with api-domains
# I am not sure if this still needed, try to remove next time I am
# working with api-domains
export JAVA_HOME="$HOME/.sdkman/candidates/java/17.0.5-zulu"

# Add keg-only go install to PATH
PATH="/opt/homebrew/opt/go@1.17/bin:$PATH"

# Add GOBIN to path
PATH="$HOME/go/bin:$PATH"

export PATH
