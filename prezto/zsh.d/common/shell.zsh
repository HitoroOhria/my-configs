# editor
export EDITOR=vim

# ls
alias ls='ls -G -l'
alias lsg='ls -G -l | grep'

# ps
alias psg='ps aux | grep'

# tail
alias ta='tail -n 30'

# printenv
alias pe='printenv'

# ssh
alias ssho='ssh -oStrictHostKeyChecking=no'

# peco
function peco-history-selection() {
    BUFFER=$(history 1 | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\*?\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$LBUFFER")
    CURSOR=${#BUFFER}
    zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

# Data loader
## embulk
export PATH=$HOME/.embulk/bin:$PATH
