#!/bin/sh

SCRIPT_DIR=$(cd $(dirname "$0"); pwd)

# replace karabiner config directory
rm -r ~/.config/karabiner/assets
rm -r ~/.config/karabiner/karabiner.json

ln -sf $(pwd)/assets ~/.config/karabiner/
ln -sf $(pwd)/karabiner.json ~/.config/karabiner/

