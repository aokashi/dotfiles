#!/bin/bash

source lib/util.sh

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

cd "$dir"
exit 0
