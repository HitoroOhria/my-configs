# set brew
export PATH=$PATH:/opt/homebrew/bin

# set mise
eval "$(~/.local/bin/mise activate zsh)"
alias ml="mise ls"
alias mlg="mise ls | grep --color=never go"
alias mln="mise ls | grep --color=never node"
alias mlp="mise ls | grep --color=never python"
alias mlr="mise ls | grep --color=never rust"

