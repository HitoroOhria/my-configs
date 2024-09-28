#!/bin/sh

SCRIPT_DIR=$(cd $(dirname "$0"); pwd)

# install prezto
# see https://github.com/sorin-ionescu/prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# replace runcoms directory
rm -rf ~/.zprezto/runcoms
ln -s $(pwd)/runcoms/ ~/.zprezto/

# set zsh.d
rm -rf ~/.zsh.d
ln -s $(pwd)/zsh.d/ ~/.zsh.d

# set zsh config files
# Don't execute by shell script.
#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done
ln -sf ~/.zprezto/runcoms/zlogin ~/.zlogin
ln -sf ~/.zprezto/runcoms/zlogout ~/.zlogout
ln -sf ~/.zprezto/runcoms/zpreztorc ~/.zpreztorc
ln -sf ~/.zprezto/runcoms/zprofile ~/.zprofile
ln -sf ~/.zprezto/runcoms/zshenv ~/.zshenv
ln -sf ~/.zprezto/runcoms/zshrc ~/.zshrc

