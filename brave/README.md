# Installation

Install with repository manager. Don't use snap store.

# Bookmarks

- sync setting other than bookmarks
- create symbolic link of bookmarks

# Custom shortcuts

`brave://settings/system/shortcuts`

- disable alt + left/right (Back/Forward)
- attach alt + left/right to move Previous tab/Next tab

# Rendering broblem

see https://www.japan-secure.com/entry/what-to-do-if-something-goes-wrong-with-the-google-chrome-display.html#i-3.

# PWA (WPAs)

### Ubuntu from apt

- Not install brave from snap store because albert cannot search PWA app as desktop one.
- Install brave from apt.

### Install PWA

set install shortcut.

- go to `brave://settings/system/shortcuts`
- change short cut `Install WPA` to `Ctrl + I`

install app.

- go to target page.
- press `Ctrl + I`


### Fixing PWA Name

#### Get app id

```shell
$ cd ~/Desktop

$ ls                                                                           
-rwxr-xr-x 1 ohira 319 Feb  4 15:42 brave-<app-id>-Default.desktop
```

#### Quick fix

fix 3 files.

```shell
~/Desktop/brave-<app-id>-Default.desktop
~/.gnome/apps/brave-<app-id>-Default.desktop
~/.local/share/applications/brave-<app-id>-Default.desktop
...

#### How to Find target files

```shell
$ find ~ -print | grep -i <app-id>
/home/ohira/Desktop/brave-<app-id>-Default.desktop
/home/ohira/.gnome/apps/brave-<app-id>-Default.desktop
/home/ohira/.local/share/applications/brave-<app-id>-Default.desktop
...
```

