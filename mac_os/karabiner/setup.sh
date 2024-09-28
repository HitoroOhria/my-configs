#!/bin/sh

SCRIPT_DIR=$(cd $(dirname "$0"); pwd)

# replace karabiner config directory
rm -r ~/.config/karabiner
ln -s "$SCRIPT_DIR" ~/.config
