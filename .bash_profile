# FUNCTIONS
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# ALIAS
alias gc='git checkout'
alias gac='git add --all & git commit -m'
alias gaa='git add --all'
alias ga='git add'
alias gco='git commit -m'
alias glog='git log'
alias gs='git status'
alias gri='git rebase --interactive'
alias gp='git push'

# TERMINAL CUSTOMIZATION
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
