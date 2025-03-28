# keybind for mac
bindkey "^[^?" backward-kill-word # Option + Delete to backward delete word
bindkey "^[[3;3~" kill-word # Option + Forwad Delete to forwad delete word

# editor
export EDITOR=vim

# ls
alias ls='ls -lG'
alias lsa='ls -alG'
alias lsg='ls -alG | grep'
alias sl='ls'

# ps
alias psg='ps aux | grep'

# tail
alias ta='tail -n 30'

# printenv
alias pe='printenv'

# copy
copy() {
    if [ -t 0 ]; then
        # 引数がある場合、ターミナルからの直接入力を受ける
        echo -n "$*" | pbcopy
        # echo -n "$*" | xclip -selection clipboard => Linux
    else
        # 標準入力がある場合、パイプ経由で入力を受ける
        pbcopy
        # xclip -selection clipboard => Linux
    fi
}

# ssh
alias ssho='ssh -oStrictHostKeyChecking=no'

# date
alias datef='date +"%Y-%m-%d %H:%M:%S %z"'
alias now='date +"%Y-%m-%d_%H-%M-%S"'

# peco
function peco-history-selection() {
    BUFFER=$(history 1 | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\*?\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$LBUFFER")
    CURSOR=${#BUFFER}
    zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

# direnv
eval "$(direnv hook zsh)"

# Data loader
## embulk
export PATH=$HOME/.embulk/bin:$PATH

# bin
export PATH="$HOME/.local/bin:$PATH"

