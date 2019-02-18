#!/bin/bash

# シンボリックリンクをホームディレクトリに作ります。
#   $1 リンクするディレクトリのパス
#   $2 ファイルパス
link_to_home() {
  ln -snfv "$1"/"$2" ~/
}

# シンボリックリンクをホームディレクトリのどこかに作ります。
#   $1 link_to_homeと同じ
#   $2 link_to_homeと同じ
#   $3 配置するシンボリックリンクのディレクトリ (ホームディレクトリから)
link() {
  ln -snfv "$1"/"$2" ~/"$3"
}

# .から始まるファイルやディレクトリを探します。システムで生成されるファイルは除外されます。
#   $1 探すディレクトリのパス
get_dot_files() {
  dir=$(pwd)
  cd "$1"

  arr=()
  for file in .**?
  do
    [ "$file" == ".." ] && continue
    [ "$file" == ".DS_Store" ] && continue
    [ "$file" == ".git" ] && continue
    [ "$file" == ".gitignore" ] && continue
    [ "$file" == ".vscode" ] && continue
    arr+=("$file")
  done

  cd "$dir"
  echo ${arr[@]}
}
