# Install

- [battery](https://github.com/actuallymentor/battery)
  - for battery life healthy
- [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12)
  - for clamshell mode

# Battery 

```shell
./setup.sh
```

# Amphetamine

- open Settings > Triggers
- Add below trigger
  - Name: `Connect to external display`
  - Criteria: `USB Device: LG Monitor Controls (405NTABCD760)`
  - Additional Options
    - [x] Allow display sleep
    - [ ] Allow system sleep when display is closed
    - [ ] Allow screen saver after 45m of inactivity

