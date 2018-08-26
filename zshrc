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
alias gu='git pull --rebase --autostash'

export HISTCONTROL=erasedups
export HISTSIZE=1000
export HISTIGNORE="&:ls:[bf]g:exit"

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
# Example format: plugins=(git textmate ruby lighthouse)
plugins=(brew bundler cap command-not-found gem git github nvm-zsh ruby vi-mode ssh-agent vagrant tmuxinator screen osx node last-working-dir git_remote_branch git-flow)

source $ZSH/oh-my-zsh.sh

# for some reason, this is necessary to make the keybindings work properly
source ~/dotfiles/oh-my-zsh/lib/key-bindings.zsh

#export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

export PATH="/usr/X11R6/bin:/usr/local/share/npm/bin:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
# alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

source "$HOME/.profile"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(rbenv init -)"
export NODE_OPTIONS=--max_old_space_size=8096
export CASTLE_IP="127.0.0.1"

export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id);
export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key);
export AWS_DEFAULT_REGION=$(aws configure get region);

eval "$(luarocks --lua-dir=/usr/local/opt/lua@5.1 path)"
export CASTLE_IP="127.0.0.1"
