#!/bin/bash

# autstart
ln -sf $(pwd)/autostart ~/.config/autostart

# key speed
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 12
gsettings set org.gnome.desktop.peripherals.keyboard delay 190

# search shortcuts
gsettings list-recursively | grep switch-app

# ubuntu shortcuts

### Switch application 
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Control>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Shift><Control>Tab']"

### Switch window in application
# not found key name
# `Settings > Keyboard > Keyboard Shortcuts > Navigation > Switch windows of an application (Ctrl+`)` to `Ctrl+Escape.`

### Disable switch-window (<Alt>Tab) for IntelliJ IDEA shortcut.
gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "[]"

### Disable switch-to-workspace-left/right (<Alt><Ctrl>Left/Right) for IntelliJ IDEA shortcut.
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>Page_Up', '<Super><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>Page_Down', '<Super><Alt>Right']"


# disable emoji picker hotkey
gsettings set org.freedesktop.ibus.panel.emoji hotkey "[]"

