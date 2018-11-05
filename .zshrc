# Path to your oh-my-zsh installation.
export ZSH=/Users/rnd/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="honukai-iterm-zsh/honukai" # "robbyrussell"


# Fix incorrect cursor position
# https://gist.github.com/ChaosJohn/245c58ae042f172feca2d81ee498afc1
# sed "s/➜/→/g;s/✗/×/g;s/✖︎/×/g" (replace in current-theme.zsh-theme), example usage:
#
# sed "s/➜/→/g;s/✗/×/g;s/✖︎/×/g" $HOME/.oh-my-zsh/custom/themes/honukai.zsh-theme > honukai-replaced.zsh-theme
#
# ###########
#
# 1. https://apple.stackexchange.com/questions/269324/zsh-terminal-displaying-characters-and-cursor-in-the-wrong-place
# 2. https://github.com/robbyrussell/oh-my-zsh/issues/1602
# export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8
#
# ###########
#
# enable base16 shell: https://github.com/chriskempson/base16-shell
# BASE16_SHELL=$HOME/.config/base16-shell/
# [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
setopt menu_complete
bindkey -M menuselect '^M' .accept-line

# set -o vi

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# The following redefinition of the $PATH is
# a temp fix for nvm problem: https://github.com/creationix/nvm/issues/1652
PATH="/usr/local/bin:$(getconf PATH)"

# copy from ~/.bash_profile
source $HOME/.nvm/nvm.sh
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/Applications/MAMP/bin/php/php5.6.2/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/customScripts:$PATH"
export APP_SETTINGS="project.config.DevelopmentConfig"
source $HOME/.credentials
eval "$(rbenv init -)"

# export JAVA_HOME="/usr/libexec/java_home"

alias nis="npm install --save"
alias nid="npm install --save-dev"
alias p="python -m SimpleHTTPServer"
alias gs="git status"
alias npmls="npm ls --depth" # enter depth, then package name
# alias cc='clear && $(fc -ln -1)' # doesn't work ¯\_(ツ)_/¯ # used to move last output to top; be careful, though
# CLipboard Contents
copyContentsToClipboard() {
  cat $1 | pbcopy
}
alias clc="copyContentsToClipboard"


# completions https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org
compdef 'npm i'=ls
