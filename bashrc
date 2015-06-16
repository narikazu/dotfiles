
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
alias beg='bundle exec guard'
alias rki='be rake db:import_dummy_data_all'
alias rkm='bundle exec spring rake db:migrate'
alias rkm_t='bundle exec spring rake db:migrate RAILS_ENV=test'
alias r_s='bundle exec spring rails s'
alias r_c='bundle exec spring rails c'
alias r_db='bundle exec spring rails db'
alias pal_p='bundle exec rake parallel:prepare'
alias pal_s='bundle exec rake parallel:spec'

# setting of ctags
alias ctags="`brew --prefix`/bin/ctags"


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


export PARALLEL_TESTS_EXECUTABLE="rspec"

HISTTIMEFORMAT="%d/%m/%y %T "

