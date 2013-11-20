# Setting aliases
alias ls='ls -G'

# Setting default editor
export EDITOR=vim

# Setting PATH for Homebrew
export PATH="/usr/local:/usr/local/bin:${PATH}"
# Setting PATH for RVM
export PATH="$HOME/.rvm/bin:${PATH}"

# Setting variables for virtualenvwrapper
export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/Projects"

# Setup RVM (Ruby)
if [[ -s "$HOME/.rvm/scripts/rvm" ]]
then
    source "$HOME/.rvm/scripts/rvm"
fi
# Setup Kerl (Erlang)
if [[ -s "$HOME/.kerl/installs/current/activate" ]]
then
    source "$HOME/.kerl/installs/current/activate"
fi
# Setup virtualenvwrapper (Python)
if [[ -s "/usr/local/bin/virtualenvwrapper.sh" ]]
then
    source "/usr/local/bin/virtualenvwrapper.sh"
fi
# Setup git prompt
if [[ -s "$HOME/.git-prompt.sh" ]]
then
    source "$HOME/.git-prompt.sh"
    export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
else
    export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[00m\]\$ '
fi
