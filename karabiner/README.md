<!-- START doctoc -->
<!-- END doctoc -->

# Preconditions

- キーボード種別が ANSI であること
- ghq がインストールされていること
- Karabiner がインストールされていること

# Step

## Install Karabiner-Elements

- install from [here](https://karabiner-elements.pqrs.org/)

## Setup Karabiner-Elements

- launch Karabiner-Elements and allow access privacy

## Clone this repository

- do it by root README.md

## Run setup script

```shell
$ ./setup.sh
```

## Set Karabiner-Elements profiles

- launch Karabienr-Elements and move Profiles tab
- remove default profile
- add `MacBook build-in keyboard` profile
    - add all Complex modifications
    - add Simple modifications
        - interational1 to equal_sign
        - 英数キー to left_control
        - かなキー to fn
        - left_control to tab
        - oen_bracket to hyphen
        - quote to close_bracket
        - right_command to right_option
        - semicolon to open_bracket
        - tab to escape 
- add `Crne Cherry` profile
    - add all Complex modificatifons

## Done!!

- Congratulation! You got it all for anything!
