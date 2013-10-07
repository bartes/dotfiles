# Path to your oh-my-zsh configuration.
export ZSH=$HOME/dotfiles/oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="gallois"

export PATH=~/scripts:$PATH

export EDITOR=mvim

export RBXOPT=-X19
export JRUBY_OPTS="--1.9"

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

alias tmux='TERM=xterm-256color tmux'
alias mux='TERM=xterm-256color mux'

alias be='bundle exec'
alias gu='git-up'

export HISTCONTROL=erasedups
export HISTSIZE=1000
export HISTIGNORE="&:ls:[bf]g:exit"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.tmuxinator/scripts/tmuxinator" ]] && source "$HOME/.tmuxinator/scripts/tmuxinator"

eval "$(hub alias -s)"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew bundler cap command-not-found gem git github rails3 ruby vi-mode ssh-agent vagrant tmuxinator screen rvm osx node last-working-dir git_remote_branch git-flow)

source $ZSH/oh-my-zsh.sh

# for some reason, this is necessary to make the keybindings work properly
source ~/dotfiles/oh-my-zsh/lib/key-bindings.zsh

export PATH="/usr/X11R6/bin:/usr/local/share/npm/bin:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
