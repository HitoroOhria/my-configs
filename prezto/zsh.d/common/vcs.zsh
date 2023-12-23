# git
## set git
export PATH=/usr/local/bin/git:$PATH
alias g='git'

## set tig
alias t='tig'

## set lazygit
alias l='lazygit'

## set aicommits
alias aicommits='~/.anyenv/envs/nodenv/versions/20.2.0/bin/aicommits'

# github
## set ghq
alias gcd='cd $(ghq list -p | peco --query "$LBUFFER")'
