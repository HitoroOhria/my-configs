#!/bin/sh

# install prezto
# see https://github.com/sorin-ionescu/prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# replace runcoms directory
rm -rf ~/.zprezto/runconms
ln -s ~/ghq/github/HirotoOhria/my-configs/prezto/runcoms ~/.zprezto/

# set zsh confing files
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
