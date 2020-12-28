# Git branch in prompt.
parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\033[32m\u's MBP\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$"
export CLICOLOR=1
alias ls='ls -GFh'
