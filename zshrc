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
plugins=(autojump battery brew git github history history-substring-search osx redis-cli themes)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias go="nocorrect go"
alias gtv="go test -v"
alias gs="git status -s"
alias grc="git rebase --continue"
alias zshconf="subl $HOME/.zshrc"
alias ohmy="subl $HOME/.oh-my-zsh"

if [[ -s $(which rbenv) ]]; then
	eval "$(rbenv init -)"
fi

if [[ -s "$HOME/.apcera" ]]; then
	source "$HOME/.apcera"
fi

export GOBIN=$GOPATH/bin
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$GOBIN
