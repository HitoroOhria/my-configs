<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Overview](#overview)
- [Step](#step)
    - [Install homebrew](#install-homebrew)
    - [Install git](#install-git)
    - [Install ghq](#install-ghq)
    - [Clone this repository](#clone-this-repository)
    - [Run setup script](#run-setup-script)
    - [Setup manually](#setup-manually)
- [Using software](#using-software)
    - [Mac](#mac)
    - [Linux](#linux)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Overview

- this is my Mac setting
- make pass command (skip this step because already added my `.zprofile`)
    - `$ echo 'eval $(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprifile`

# Step

### Install homebrew

- install from [here](https://brew.sh/index)

### Install git

- run `$ brew install git`
- make pass command (skip this step because already added my `.zshrc`)
    - `$ ehoc "export PATH=/usr/local/bin/git:$PATH" >> ~/.zshrc`
    - `$ source ~/.zshrc`

### Install ghq

```shell
$ brew install ghq
```

### Clone this repository

```shell
$ ghq get https://github.com/HirotoOhria/my-mac-configs.git
```

### Run setup script

```shell
$ ./setup_all.sh
```

### Setup manually

- macOS Prefectures
- Karabiner-Elements
- Vimium

# Using software

### Mac

- Utility Tools
    - Raycast
    - Karabiner-Elements
    - 1Password
    - Slack
    - Notion
    - 1Focus
    - [f.lux](https://justgetflux.com/) (set 6:00 wake up)
    - [CleanShot X](https://cleanshot.com/)
    - Yoink
    - BetterDisplay
    - [Google Dive](https://www.google.com/intl/ja_jp/drive/download/)
    - [VIA](https://github.com/the-via/releases/releases)
    - [DevToys](https://devtoys.app/)
    - [battery](https://github.com/actuallymentor/battery)
    - [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12)
- Development Tools
    - Docker Desktop
    - JetBrains IDE
    - homebrew
    - prezto
    - enhancd
    - git
    - tig
    - ghq
    - peco
    - mise
    - httpie
    - UDEV Gothic
- Chrome Extensions
    - [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
    - [Chrome Show Tab Numbers](https://chrome.google.com/webstore/detail/chrome-show-tab-numbers/pflnpcinjbcfefgbejjfanemlgcfjbna)
    - [Color zilla](https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp)

### Linux

- Utility Tools
    - [CopyQ](https://github.com/hluk/CopyQ)
    - [Flameshot](https://github.com/flameshot-org/flameshot)
    - [espanso](https://github.com/espanso/espanso)
    - [emote](https://github.com/tom-james-watson/Emote)
    - [peek](https://github.com/phw/peek)

