# Setup aliases
alias ls="ls -G"
alias ll="ls -alG"

# Setup prompt
source $HOME/.shell_prompt.sh

# Setup default editor
export EDITOR=vim

export GOPATH="$HOME/Projects/go"

# Setup paths
export PATH="/usr/local/bin:$PATH" # Homebrew
export PATH="$PATH:$GOPATH/bin"    # Go 
export PATH="$PATH:$HOME/.rvm/bin" # RVM
