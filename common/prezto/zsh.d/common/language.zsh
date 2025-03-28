# node
## set node
export PATH=$HOME/.nodebrew/current/bin:$PATH
alias nci='npm ci'
alias nrd='npm run dev'
alias nrs='npm run storybook'

# java
## set java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-19.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin

# go
## set go
export GOPATH=$HOME/go
export PATH=$GOROOT/bin:$PATH
export PATH=$GOPATH/bin:$PATH

# ruby
## set rials
alias r='rails'
alias rc='rails credentials:edit'
alias be='bundle exec'

## set rubocp
alias ru='rubocop'
alias rug='rubocop --auto-gen-config '
alias ruc='rubocop --auto-correct'

