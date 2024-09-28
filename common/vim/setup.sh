#!/bin/sh

SCRIPT_DIR=$(cd $(dirname "$0"); pwd)

# install vim-plug
# see https://github.com/junegunn/vim-plug?tab=readme-ov-file#vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# set vim config
ln -sf $(pwd)/vimrc ~/.vimrc

# install vim with clipboard supported
sudo apt install vim-gtk3

