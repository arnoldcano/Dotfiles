# Load in the git branch prompt script
source ~/.git-prompt.sh

# Setting aliases
alias ls='ls -G'

# Setting colored prompt declaration for git
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
export PS1

# Setting default editor
EDITOR=vim
export EDITOR

# Setting /usr/local/bin before /usr/bin
PATH="/usr/local/bin:/usr/local/sbin:${PATH}"
