#!/bin/bash

# git branch を拡張するスクリプト
# 引数がない場合は、ブランチ一覧を情報付きで表示する
# 引数がある場合は、そのまま git branch を実行する
#
# 引数がない場合は、以下のような出力になる
# e.g. [ 8m ago] * feat/foo/bar                   Here is the commit message
# e.g. [11h ago]   feat/baz/foobar                Here is the commit message2
# e.g. [22d ago]   feat/looooooooooooooooooooo... Here is the commit message3
if [ $# -eq 0 ]; then
  # 引数がない場合は拡張された branch を表示
  current=$(git branch --show-current)

  # ブランチ一覧を情報付きで取得する
  # 最終更新日の降順でソートする
  # <absolute_updated_at> <branch_name> <latest_commit_message>
  # e.g. 38 minutes ago feat/foo/bar Here is the commit message
  git for-each-ref --sort=-committerdate --format="%(committerdate:relative) %(refname:short) %(subject)" refs/heads/ | \
    # months, weeks, days, hours, minutes を m, w, d, h, m に変換
    # e.g. [8m ago] feat/foo/bar Here is the commit message
    # e.g. [11h ago] feat/baz/foobar Here is the commit message2
    sed -E 's/([0-9]+) minutes ago/[\1m ago]/g' | \
    sed -E 's/([0-9]+) hours ago/[\1h ago]/g' | \
    sed -E 's/([0-9]+) days ago/[\1d ago]/g' | \
    sed -E 's/([0-9]+) weeks ago/[\1w ago]/g' | \
    sed -E 's/([0-9]+) months ago/[\1m ago]/g' | \
    # 相対日付の数値を2桁に空白埋めする
    # e.g. [ 8m ago] feat/foo/bar Here is the commit message
    # e.g. [11h ago] feat/baz/foobar-hoge-fuga Here is the commit message2
    sed -E 's/\[([0-9])([mhdw]) ago\]/\[ \1\2 ago\]/' | \
    # ブランチ名を整形する
    #   - ブランチ名を40文字で空白埋めする
    #   - ブランチ名が40文字を超えれば...で省略表示する
    #   - 現在のブランチ名に * を付与する
    # e.g. [ 8m ago] * feat/foo/bar                   Here is the commit message
    # e.g. [22d ago]   feat/looooooooooooooooooooo... Here is the commit message3
    gawk -v current="$current" 'match($0, /^(\[.*\]) ([^ ]+) (.*)/, arr) {
           branch = arr[2]

           # 現在のブランチ名に * を付与
           if (branch == current) {
             branch = "* " branch
           } else {
             branch = "  " branch
           }

           # ブランチ名が40文字を超えれば...で省略表示する
           # * 付与分の2文字を考慮している点に注意
           if (length(branch) > 42) {
             branch = substr(branch, 1, 39) "..."
           }

           printf("%s %-42s %s\n", arr[1], branch, arr[3])
           next
         } 1'
else
  # 引数がある場合はそのまま git branch を実行
  git branch "$@"
fi
