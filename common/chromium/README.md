# Search Engine

### Site Search

| Site or Page | Shortcut | URL         | Description |
| --- | --- |-------------| --- |
| movePage | j | javascript: | move page from address bar |

# Shortcuts

## Previous/Next tab

- open `brave://settings/system/shortcuts`
- set Moe Previous/Next tab
  - set `Previous/Next tab` to `Alt + Left/Right arrow`
  - (or see https://community.brave.com/t/custom-keyboard-shortcut/483237/4)
- remove Add Bookmark
  - remove `Bookmark this tab...`

# Install PWA

Place file as follows.

```shell
$ ls ~/.local/share/applications
total 60
-rw------- 1 ohira  310 May 19  2023 brave-balcphgbdpojaiombnfmlnllaihkmgnc-Default.desktop

$ sudo find / -name **balcphgbdpojaiombnfmlnllaihkmgnc*'
/home/ohira/.config/BraveSoftware/Brave-Browser/Default/Web Applications/Manifest Resources/pjibgclleladliembfgfagdaldikeohf
/home/ohira/.local/share/icons/hicolor/256x256/apps/brave-balcphgbdpojaiombnfmlnllaihkmgnc-Default.png
/home/ohira/.local/share/icons/hicolor/32x32/apps/brave-balcphgbdpojaiombnfmlnllaihkmgnc-Default.png
/home/ohira/.local/share/icons/hicolor/128x128/apps/brave-balcphgbdpojaiombnfmlnllaihkmgnc-Default.png
/home/ohira/.local/share/icons/hicolor/48x48/apps/brave-balcphgbdpojaiombnfmlnllaihkmgnc-Default.png
# rename below files
/home/ohira/.local/share/applications/brave-balcphgbdpojaiombnfmlnllaihkmgnc-Default.desktop
/home/ohira/.gnome/apps/brave-balcphgbdpojaiombnfmlnllaihkmgnc-Default.desktop

$ cat ~/.gnome/apps/brave-balcphgbdpojaiombnfmlnllaihkmgnc-Default.desktop
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Notion
Exec=/opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=balcphgbdpojaiombnfmlnllaihkmgnc
Icon=brave-balcphgbdpojaiombnfmlnllaihkmgnc-Default
StartupWMClass=crx_balcphgbdpojaiombnfmlnllaihkmgnc
OnlyShowIn=Old;
```

