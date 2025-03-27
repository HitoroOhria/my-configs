#!/bin/bash

# backup
mv karabiner.json karabiner.bak.json

# save
cp ~/.config/karabiner/karabiner.json karabiner.json

# delete backup
rm -rf karabiner.bak.json

