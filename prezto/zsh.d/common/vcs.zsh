# git
## set git
export PATH=/usr/local/bin/git:$PATH
alias g='git'

## set tig
alias t='tig'

# github
## set ghq
alias gcd='cd $(ghq list -p | peco --query "$LBUFFER")'
