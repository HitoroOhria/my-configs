#!/bin/bash

# backup
cp ~/.config/karabiner/karabiner.json karabiner.bak_from_config.json

# restore
rm -rf ~/.config/karabiner/karabiner.json
cp karabiner.json ~/.config/karabiner/karabiner.json

# delete backup
rm -rf karabiner.bak_from_config.json

