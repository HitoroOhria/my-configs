<!-- START doctoc -->
<!-- END doctoc -->

# Preconditions

- should be cloned this repository
- should be set keyboard type is ANSI of macOS
- should be installed ghq

# Step

### Install Karabiner-Elements

- install from [here](https://karabiner-elements.pqrs.org/)

### Setup Karabiner-Elements

- launch Karabiner-Elements and allow access privacy

### Run setup script

```shell
$ ./setup.sh
```

### Set Karabiner-Elements profiles (skip)

- launch Karabienr-Elements and move Profiles tab
- remove default profile
- add `MacBook build-in keyboard` profile
    - add all Complex modifications
    - add Simple modifications
        - `interational1` to `equal_sign`
        - `英数キー` to `left_control`
        - `かなキー` to `caps_lock`
        - `left_control` to `tab`
        - `open_bracket` to `hyphen`
        - `quote` to `close_bracket`
        - `right_command` to `right_option`
        - `semicolon` to `open_bracket`
        - `tab` to `escape` 
- add `Crne Cherry` profile
    - add all Complex modifications

## Done!!

- Congratulation! You got it all for anything!

# Feature

- [ ] Set 2nd layer keys
    - remove with Cmd, with Shift
    - add with Alt
- [ ] Fix non-working keys
    - Shift + Ctrl + E
    - Shift + Ctrl + N
    - Shift + Ctrl + Y
    - Shift + Ctrl + C
- [ ] Set Fn + Left Edges
- [ ] Consider what key to use for lower left key