# set anyenv
if which anyenv > /dev/null; then
  eval "$(anyenv init -)"
fi

# set nodenv by anyenv
export PATH=$HOME/.anyenv/envs/nodenv/bin:$PATH

# set jenv by anyenv
export PATH=$HOME/.anyenv/envs/jenv/bin:$PATH
if which jenv > /dev/null; then
  export JENV_ROOT=$HOME/.anyenv/envs/jenv
  eval "$(jenv init -)"
fi

# set pyenv by anyenv
export PATH=$HOME/.anyenv/envs/pyenv/bin:$PATH
if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi

# set goenv by anyenv
export PATH=$GOENV_ROOT/bin:$PATH
export PATH=$HOME/.goenv/bin:$PATH
export PATH=$HOME/.goenv/shims:$PATH
if which goenv > /dev/null; then
  export GOENV_ROOT=$HOME/.goenv
  eval "$(goenv init -)"
fi
