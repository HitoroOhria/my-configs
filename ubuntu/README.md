# Switch to x11

but, Wayland is ok for espanso.

```shell
sudo vi /etc/gdm3/custom.conf
```

```
WaylandEnable=false
```

# Launguage

- Settings > Reasion & Launguage
- Launuage > Manage Installed Launguages
- Install Japanese
  - for work keyd

# RAM swap

https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-20-04-ja

# Wayland

## Shortcut

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

