#!/bin/bash

# Install Cursor and place to ~/Downloads/cursor.AppImage

chmod +x ~/Downloads/cursor.AppImage
mv ~/Downloads/cursor.AppImage ~/.local/bin

ln -sf $(pwd)/cursor.desktop ~/.local/share/applications

cp -f icons/cursor_256x256.png ~/.local/share/icons/hicolor/256x256/apps/

