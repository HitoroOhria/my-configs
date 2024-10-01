# Launguage

- Settings > Reasion & Launguage
- Launuage > Manage Installed Launguages
- Install Japanese
  - for work keyd

# RAM swap

https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-20-04-ja

# X11 vs Wayland

## X11

- pros
- cons
  - tig main view is very slow on large monitor
  - not supported scan QR code on 1Password

## Wayland

- pros
- cons
  - auto switch window when close float terminal in IntelliJ?
  - screenshot need allow prompt every time
  - Espanso Sync Tool window always display on task bar
  - not supported scan QR code on 1Password

### Shortcut

- Settings > Keyboard
- Keyboard Shortcuts > Custom Shortcuts
- Add ablert shortcut
  - Name: `Show Albert`
  - Command: `albert show`
  - Shortcut: `Ctrl` + `Space`
- Add copyq shortcut
  - Name: `Show CopyQ`
  - Command: `copyq show`
  - Shortcut: `Ctrl` + `Shift` + `V`
- Add guake shortcut
  - Name: `Toggle Guake`
  - Command: `guake --toggle-visibility`
  - Shortcut: `Ctrl` + `Space`

# Gnome Extentions

- [Smart Auto Move](https://extensions.gnome.org/extension/4736/smart-auto-move/)

# For FMVUH01005

## Itnernal Microphone not working

steps

- Download [sof-hda-generic-2ch-pdm1.tplg.gz](https://github.com/thesofproject/linux/files/10238671/sof-hda-generic-2ch-pdm1.tplg.gz)
- Extract and place to `/lib/firmware/intel/sof-tplg`
- Create below file

```
# /etc/modprobe.d/micfix.conf

# This fixes the microphone issue on my Fujitsu LifeBook U series yyyy-mm-dd
options snd-sof-pci tplg_filename=sof-hda-generic-2ch-pdm1.tplg
```

links

- https://forums.debian.net/viewtopic.php?t=154589
- https://github.com/thesofproject/linux/issues/4099#issuecomment-1353337591
