#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Copy Tab Link
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName util

# Documentation:
# @raycast.description Copy current tab link as Markdown
# @raycast.author hiroto_ohira

# set Evn for Rayast runner
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

TITLE=$(osascript -e 'tell application "Brave Browser" to get title of active tab of front window')
URL=$(osascript -e 'tell application "Brave Browser" to get URL of active tab of front window')

# remove tab number
CLEANED_TITLE=$(echo "$TITLE" | sed -E 's/^[0-9]\. //')

echo "[$CLEANED_TITLE]($URL)" | pbcopy

