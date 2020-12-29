# Git branch in prompt.
parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export TERM="xterm-color" 
export PS1="\033[1;33m\u's MBP\[\033[32m\]\w\[\033[1;36m\]\$(parse_git_branch)\[\033[00m\]$"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'
