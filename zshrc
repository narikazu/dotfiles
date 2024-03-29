# Show the current directory
export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

export EDITOR='vim'
export TERM=xterm-256color

ZSH_THEME="robbyrussell"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh

# Load Git completion
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# alias
alias be='bundle exec'
alias b='bundle'
alias create_pwd='openssl rand -base64 32'

alias vi="nvim"
alias vim="nvim"

alias tac='gtac'
alias sed='gsed'
alias gsed='sed'

# ----------------------
# Git Aliases
# ----------------------
alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gap='git add -p'
alias gb='git branch'
alias gbd='git branch -d '
alias gbD='git branch -D'
alias gbr='git branch -r'
alias gc='git commit'
alias gca='git commit --amend --no-edit'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gda='git diff HEAD'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gl='git log'
alias glp='git log -p'
alias gp='git pull'
alias gpp='git pull -p'
alias gpr='git pull --rebase'
alias gps='git push'
alias gpsf='git push --force-with-lease'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstd='git stash drop'
alias s='git status'
eval "$(hub alias -s)"

export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# autojump
. /usr/share/autojump/autojump.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pyenv
export PATH="/home/kaz/.pyenv/bin:$PATH"
export PATH=$PATH:~/.local/bin
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

[[ -s "/home/kaz/.gvm/scripts/gvm" ]] && source "/home/kaz/.gvm/scripts/gvm"
