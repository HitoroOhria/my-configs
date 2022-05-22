# javascript
## set node
export PATH=$HOME/.nodebrew/current/bin:$PATH

# java
## set gradle
export GTADLE_OPTS=-Dorg.gradle.daemon=true

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
