#!/bin/bash

arg="$1"

window_names=(
    "Any.Do"
    "Notion Calendar"
    "マインドマップ"
)

if [ "$arg" = "utils" ]; then
    for window_name in "${window_names[@]}"
    do
        wmctrl -r "$window_name" -e 0,0,1000,4188,3050
    done

    wmctrl -r "Brave" -e 0,0,995,4188,3060
    wmctrl -r "Slack" -e 0,0,1100,4188,2900
elif [ "$arg" = "main" ]; then
    wmctrl -r :ACTIVE: -e 0,0,1000,4188,3050
elif [ "$arg" = "terminal" ]; then
    wmctrl -r :ACTIVE: -e 0,594,1100,3000,3500
elif [ "$arg" = "top" ]; then
    window_name="$2"
    wmctrl -r "$window_name" -e 0,0,0,4188,2339
elif [ "$arg" = "bottom" ]; then
    window_name="$2"
    wmctrl -r "$window_name" -e 0,0,2340,4188,2339
else
    echo "The argument must be one of 'utils' | 'main' | 'terminal' | 'top' | 'bottom'"
fi

echo "done"
