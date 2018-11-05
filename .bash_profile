source ~/.nvm/nvm.sh

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/Applications/MAMP/bin/php/php5.6.2/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PS1="\[\033[0;36m\]\h\[\033[0m\]:\[\033[1;37m\]\W\[\033[0m\] "
eval "$(rbenv init -)"

# export JAVA_HOME="/usr/libexec/java_home"

alias nid="npm install --save-dev"
alias p="python -m SimpleHTTPServer"
