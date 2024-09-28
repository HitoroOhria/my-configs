#!/bin/sh

# set key speed
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# set able to key repeat on any software
defaults write -g ApplePressAndHoldEnabled -bool false