# Setup aliases
alias ls="ls -G"
alias ll="ls -alG"

# Setup git prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_BRANCH="\$(__git_ps1 \" (%s) \")"
GREEN="\[\033[01;32m\]"
WHITE="\[\033[00m\]"
BLUE="\[\033[01;34m\]"
RED="\[\033[31m\]"
PS1="${GREEN}\u@\h${WHITE}:${BLUE}\w${RED}${GIT_BRANCH}${WHITE}\$ "

# Setup default editor
export EDITOR=vim

# Setup paths
export PATH="/usr/local/bin:${PATH}"   # Homebrew
export PATH="${PATH}:${HOME}/.rvm/bin" # RVM
