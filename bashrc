# Setup aliases
alias ls="ls -G"
alias ll="ls -alG"

# Setup default editor
export EDITOR=vim

# Setup promptline
source $HOME/.shell_prompt.sh

# Setup GOPATH
export GOPATH="$HOME/Projects/go"
export GO111MODULE=on

# Setup paths
export PATH="/usr/local/bin:$PATH"               # Homebrew
export PATH="$PATH:$GOPATH/bin"                  # Go
export PATH="$PATH:$HOME/.rvm/bin"               # RVM
export PATH="$PATH:$HOME/Library/Python/2.7/bin" # AWS

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/arnoldcano/.nvm/versions/node/v10.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/arnoldcano/.nvm/versions/node/v10.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/arnoldcano/.nvm/versions/node/v10.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/arnoldcano/.nvm/versions/node/v10.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/arnoldcano/.nvm/versions/node/v10.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/arnoldcano/.nvm/versions/node/v10.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash