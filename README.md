<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Overview](#overview)
- [Step](#step)
    - [Install some software](#install-some-software)
    - [Run setup script](#run-setup-script)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Overview

- this is my Mac setting

# Step

### Install homebrew

- install from [here](https://brew.sh/index)

### Install git

- run `$ brew install git`
- make pass command
    - skip this step because already added my `.zshrc`
    - `$ ehoc "export PATH=/usr/local/bin/git:$PATH" >> ~/.zshrc`
    - `$ source ~/.zshrc`

### Install ghq

```shell
$ brew install ghq
```

### Clone this repository

```shell
$ ghq get https://github.com/HirotoOhria/my-configs.git
```

### Run setup script

```shell
$ ./setup.sh
```

### Setup manually

- macOS Prefectures
- Karabiner-Elements
- Viminum

