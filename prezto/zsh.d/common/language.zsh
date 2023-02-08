# javascript
## set node
export PATH=$HOME/.nodebrew/current/bin:$PATH

# java
## set java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-19.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin

# go
## set go
export GOPATH=$HOME/go
export PATH=$GOROOT/bin:$PATH
export PATH=$PATH:$GOPATH/bin

# ruby
## set rials
alias r='rails'
alias rc='rails credentials:edit'
alias be='bundle exec'

## set rubocp
alias ru='rubocop'
alias rug='rubocop --auto-gen-config '
alias ruc='rubocop --auto-correct'

# python
alias python="$(pyenv which python)"
alias pip="$(pyenv which pip)"
