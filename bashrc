# Setup aliases
alias ls="ls -G"
alias ll="ls -alG"

# Setup default editor
export EDITOR=vim

# Setup promptline
source $HOME/.shell_prompt.sh

# Setup GOPATH
export GOPATH="$HOME/Projects/go"

# Setup paths
export PATH="/usr/local/bin:$PATH"               # Homebrew
export PATH="$PATH:$GOPATH/bin"                  # Go
export PATH="$PATH:$HOME/.rvm/bin"               # RVM
export PATH="$PATH:$HOME/Library/Python/2.7/bin" # AWS
