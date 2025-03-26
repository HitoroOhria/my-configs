#!/bin/bash

cp ~/.config/karabiner/karabiner.json karabiner.bak_from_config.json
rm -rf ~/.config/karabiner/karabiner.json
cp karabiner.json ~/.config/karabiner/karabiner.json

