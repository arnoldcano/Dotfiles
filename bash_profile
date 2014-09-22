# Load bash completion and git prompt
source $(brew --prefix)/etc/bash_completion
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

# Load version managers
source "${HOME}/.nvm/nvm.sh"      # NVM
source "${HOME}/.gvm/scripts/gvm" # GVM
source "${HOME}/.rvm/scripts/rvm" # RVM

# Load aliases and variables
source "${HOME}/.bashrc"
