#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Active last Dock App
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName util

# Documentation:
# @raycast.description Activate last Dock Application
# @raycast.author hiroto_ohira
# @raycast.authorURL https://raycast.com/hiroto_ohira

tell application "System Events"
	set dockApps to name of processes whose background only is false
end tell

set lastApp to last item of dockApps

tell application lastApp
	activate
end tell

