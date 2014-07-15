# colors for ls, etc.
eval `dircolors -b /etc/DIR_COLORS`
alias d="ls --color"
alias ls="ls --color"
alias ll="ls --color -lhG"
alias rfind="find . -print0 | xargs -0 grep -ins --color=always"
alias rfinds="find . -print0 | xargs -0 grep -ns --color=always"
alias gs="git status"
alias gl="git log --stat"
alias gd="git diff"
alias tree="git log --graph --decorate --pretty=oneline --abbrev-commit --all"
stty ixany
stty ixoff -ixon

export TERM=xterm-256color

# Change the window title of X terminals
case $TERM in
        xterm*|rxvt|Eterm|eterm)
                PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
                ;;
        screen)
                PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
                ;;
esac
