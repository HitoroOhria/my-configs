# git
## set git
export PATH=/usr/local/bin/git:$PATH
alias g='git'
### set diff-highlight. 
### Throw PATH and run `sudo chmod +x /usr/share/doc/git/contrib/diff-highlight/diff-highlight`.
### see https://stackoverflow.com/a/55891251.
PATH="/usr/share/doc/git/contrib/diff-highlight:$PATH"

## set tig
alias t='tig'

## set lazygit
alias l='lazygit'

## set aicommits
alias aicommits='~/.anyenv/envs/nodenv/versions/20.2.0/bin/aicommits'

# github
## set ghq
alias gcd='cd $(ghq list -p | peco --query "$LBUFFER")'

# ai-commit
alias ac='ai-commit --language japanese'
alias acl='ai-commit --language japanese --list'

