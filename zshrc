# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="muse"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew git github heroku history history-substring-search osx themes vagrant)

source "$ZSH/oh-my-zsh.sh"

# We already have inc_append_history, so share_history is overkill
unsetopt share_history

# Less annoying corrections
alias bundle="nocorrect bundle"
alias go="nocorrect go"
alias sshfs="nocorrect sshfs"
alias vagrant="nocorrect vagrant"

# Handy things
alias grc="git rebase --continue"
alias gs="git status -s"
alias gtv="go test -v"
alias ohmy="subl $HOME/.oh-my-zsh"
alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias zshconf="subl $HOME/.zshrc"

# Optional Apcera config
if [[ -s "$HOME/.apcera" ]]; then source "$HOME/.apcera"; fi

# Go & Homebrew paths
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:/usr/local/bin:/usr/local/sbin:${PATH}

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
