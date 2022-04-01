#!/bin/sh

SCRIPT_DIR=$(cd $(dirname "$0"); pwd)

# install prezto
# see https://github.com/sorin-ionescu/prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# replace runcoms directory
rm -rf ~/.zprezto/runcoms
ln -s "$SCRIPT_DIR"/runcoms/ ~/.zprezto/

# set zsh config files
# Don't execute by shell script.
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
