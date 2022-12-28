# Use SSL from Homebrew with Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/homebrew/opt/openssl@3"

# Do not want homebrew to update unrelated packages when running brew install
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1
