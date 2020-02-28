if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source ~/git-completion.bash
source ~/.rails.bash

alias g="git"
alias gco="git checkout"
alias s="git status"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias gdc="git diff --cached"

alias ls='ls -G'

alias be="bundle exec"

# __git_ps1でブランチ名表示
PS1='\[\033[32m\]\u@\[\033[34m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=auto

# use zsh
# if [ -f /bin/zsh ]; then
#  exec /usr/local/bin/zsh
# fi

HISTTIMEFORMAT="%d/%m/%y %T "


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
