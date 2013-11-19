# Setting aliases
alias ls='ls -G'

# Load in the git branch prompt script
if [[ -s "$HOME/.git-prompt.sh" ]]
then
    . "$HOME/.git-prompt.sh"

    export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
fi

# Setting default editor
export EDITOR=vim

# Setting PATH for Homebrew
export PATH="/usr/local:/usr/local/bin:${PATH}"
# Setting PATH for RVM
export PATH="$HOME/.rvm/bin:${PATH}"
# Setting PATH for virtualenvwrapper
export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/Projects"

# Setup RVM (Ruby)
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
# Setup Kerl (Erlang)
[[ -s "$HOME/.kerl/installs/current/activate" ]] && . "$HOME/.kerl/installs/current/activate"
# Setup virtualenvwrapper (Python)
[[ -s "/usr/local/bin/virtualenvwrapper.sh" ]] && . "/usr/local/bin/virtualenvwrapper.sh"
