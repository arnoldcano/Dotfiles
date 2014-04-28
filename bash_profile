# Load bash completion and git prompt
source $(brew --prefix)/etc/bash_completion
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

# Load aliases and variables
source "${HOME}/.bashrc"

# Load version managers
source "${HOME}/.nvm/nvm.sh"      # NVM
source "${HOME}/.rvm/scripts/rvm" # RVM
source "${HOME}/.gvm/scripts/gvm" # GVM
