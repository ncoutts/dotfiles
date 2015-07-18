alias ll="ls -lhG"
alias gs="git status"
alias gl="git log --stat"
alias gd="git diff"
alias tree="git log --graph --decorate --pretty=oneline --abbrev-commit --all"
alias folders="find . -maxdepth 1 -type d -print0 | xargs -0 du -sh | sort -rn"
alias ..="cd .."
alias ...="cd ../.."
alias mv="mv -i"

export TERM=xterm-256color
export PS1="[\[\033[0;31m\]\u\[\033[0m\]@\h:\w] \[\033[0m\] [\[\033[1;33m\]\t\[\033[0m\]] $\[\033[0m\] "
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
