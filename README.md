<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Overview](#overview)
- [Step](#step)
  - [Install some software](#install-some-software)
  - [Run setup script](#run-setup-script)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Overview

- this is my setting

# Step

## Install some software

- homebrew
    - install from [here](https://brew.sh/index)
- git
    - run `$ brew install git`
    - make pass command
        - skip this step because already added my `.zshrc` and `setup.sh`.
        - `$ ehoc "export PATH=/usr/local/bin/git:$PATH" >> ~/.zshrc`
        - `$ source ~/.zshrc`
- Karabiner-Elements
    - install from [here](https://karabiner-elements.pqrs.org/)
- tig
    - todo: write here

## Run setup script

```shell
$ ./setup.sh
```