#!/bin/bash

source lib/link_util.sh

# dotfilesディレクトリ設定
dir=$(pwd)
cd ..
dotfiles=$(pwd)

# シンボリックリンク作成
files=$(get_dot_files "$dotfiles")
for file in ${files[@]}
do
  link_to_home "$dotfiles" "$file"
done

# vscode (設定ファイル削除に注意!!)
rm -f ~/Library/Application\ Support/Code/User/settings.json
rm -rf ~/Library/Application\ Support/Code/User/snippets
link "$dotfiles" "etc/vscode/settings.json" Library/Application\ Support/Code/User
link "$dotfiles" "etc/vscode/snippets" Library/Application\ Support/Code/User

cd "$dir"
exit 0
