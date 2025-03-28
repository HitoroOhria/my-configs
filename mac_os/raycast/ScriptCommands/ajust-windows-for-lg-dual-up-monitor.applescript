#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Ajust windows for LG Dual-Up Monitor
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 💻
# @raycast.packageName util

# Documentation:
# @raycast.description Ajust windows for LG Dual-Up Monitor
# @raycast.author hiroto_ohira
# @raycast.authorURL https://raycast.com/hiroto_ohira

-- LG Dual-Up Monitor
set lgMonitorSizeW to 2048
set lgMonitorSizeH to 2304

-- 共通関数: 指定したアプリのすべてのウィンドウをリサイズ・移動
on resizeAllWindows(appNameText, posX, posY, sizeW, sizeH)
    try
        tell application appNameText to activate
        delay 0.2

        tell application "System Events"
            tell application process appNameText
                repeat with w in windows
                    try
                        set position of w to {posX, posY}
                        set size of w to {sizeW, sizeH}
                    on error innerErr
                        display dialog "failed to resize a window of " & appNameText & ": " & innerErr
                    end try
                end repeat
            end tell
        end tell
    on error errMsg
        display dialog "failed to process " & appNameText & ": " & errMsg
    end try
end resizeAllWindows

-- 1. 部分リサイズするアプリ
set appList1 to {"Brave Browser", "Notion Calendar", "ChatGPT", "Slack"}
set posX1 to 0
set posY1 to 650
set sizeW1 to lgMonitorSizeW
set sizeH1 to 1400

repeat with appName in appList1
    resizeAllWindows(appName, posX1, posY1, sizeW1, sizeH1)
end repeat

-- 2. 全画面サイズにリサイズするアプリ
set appList2 to {"IntelliJ IDEA", "DataGrip", "Code"}
set posX2 to 0
set posY2 to 0
set sizeW2 to lgMonitorSizeW
set sizeH2 to lgMonitorSizeH

repeat with appName in appList2
    resizeAllWindows(appName, posX2, posY2, sizeW2, sizeH2)
end repeat

-- 3. Finder（中央寄せ）
set finderWidth to 900
set finderHeight to 600
set finderPosX to (lgMonitorSizeW - finderWidth) / 2 
set finderPosY to 950

resizeAllWindows("Finder", finderPosX, finderPosY, finderWidth, finderHeight)

