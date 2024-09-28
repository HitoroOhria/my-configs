#!/bin/sh

SCRIPT_DIR=$(cd $(dirname "$0"); pwd)

# install tig
brew install tig

# set tig config
ln -sf $(pwd)/tigrc ~/.tigrc

