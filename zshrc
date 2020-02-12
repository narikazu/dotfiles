export TERM=xterm-256color
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export PATH=/usr/local/php5/bin:$PATH
export PATH="/usr/local/heroku/bin:/usr/local/bin:/usr/local/heroku/bin:/Users/narikazu/bin:/Users/narikazu/.rbenv/shims:/usr/local/php5/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/narikazu/android-sdks/platform-tools:/Users/narikazu/android-sdks/tools"
# nodebrew
export PATH=/usr/local/var/nodebrew/current/bin:$PATH
# Go
export GOENV_ROOT="$HOME/.goenv"
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"
export GOPATH=$HOME/.go
export PATH="$PATH:$GOPATH/bin"

# Ruby
eval "$(rbenv init - zsh)"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'

# alias
alias tac='gtac'
alias sed='gsed'
alias ssh-peco="grep -w Host ~/.ssh/config | peco | awk '{print \$2}' | xargs -o -n 1 ssh"
alias pco='git checkout `git branch | peco`'
alias ticket_logs='git log --pretty=oneline | head -20 | tac | sed -e "s|\([a-z0-9]*\) \(.*\)|* [\1/${PWD##*/}]\n * \2\n|"'
alias -g B='`git branch | peco | sed -e "s/^\*[ ]*//g"`'
[[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# tmux自動起動

if [ -z "$TMUX" -a -z "$STY" ]; then
    if type tmuxx >/dev/null 2>&1; then
        tmuxx
    elif type tmux >/dev/null 2>&1; then
        if tmux has-session && tmux list-sessions | /usr/bin/grep -qE '.*]$'; then
            tmux attach && echo "tmux attached session "
        else
            tmux new-session && echo "tmux created new session"
        fi
    elif type screen >/dev/null 2>&1; then
        screen -rx || screen -D -RR
    fi
fi

export LESS='-R'
export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# alias
alias vi="nvim"
alias vim="nvim"


# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gap='git add -p'
alias gb='git branch'
alias gbd='git branch -d '
alias gc='git commit'
alias gca='git commit --amend --no-edit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gda='git diff HEAD'
alias gdc='git diff --cached'
alias gi='git init'
alias gl='git log'
alias glp='git log -p'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gp='git pull'
alias gpp='git pull -p'
alias gpr='git pull --rebase'
alias gps='git push'
alias gss='git status -s'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstd='git stash drop'
alias s='git status'
alias gpsf='git push --force-with-lease'
alias gtl='git describe --abbrev=0 --tags'
eval "$(hub alias -s)"

# ----------------------
# Git Function
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }

alias be='bundle exec'
alias b='bundle'
alias create_pwd='openssl rand -base64 32'

export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

# peco-select-history
function peco-select-history() {
    BUFFER=$(fc -l -r -n 1 | peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle redisplay
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# peco-find-file
function peco-find-file() {
    if git rev-parse 2> /dev/null; then
        source_files=$(git ls-files)
    else
        source_files=$(find . -type f)
    fi
    selected_files=$(echo $source_files | peco --prompt "[find file]")

    BUFFER="${BUFFER}${echo $selected_files | tr '\n' ' '}"
    CURSOR=$#BUFFER
    zle redisplay
}
zle -N peco-find-file
bindkey '^q' peco-find-file

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

export GOENV_ROOT="$HOME/.goenv"
eval "$(goenv init -)"

export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
