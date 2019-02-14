#!/bin/bash

# 指定したコマンド名が実行できるか確認します。
# $1 確認するコマンド名
has_command() {
  if type "$1" > /dev/null 2>&1
  then
    echo 1
  else
    echo 0
  fi
}

# シンボリックリンクをホームディレクトリに作ります。
# $1 リンクするディレクトリのパス
# $2 ファイルパス
link_to_home() {
  ln -snfv "$1"/"$2" ~/
}

# anyenvをインストールします
# $1 anyenv のPATH設定を入れるファイル (.bashrc とか)
install_anyenv() {
  git clone https://github.com/riywo/anyenv ~/.anyenv
  echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/$1
  echo 'eval "$(anyenv init -)"' >> ~/$1
  exec $SHELL -1
}

# .から始まるファイルやディレクトリを探します。システムで生成されるファイルは除外されます。
# $1 探すディレクトリのパス
get_dot_files() {
  dir=$(pwd)
  cd "$1"

  arr=()
  for file in .**?
  do
    [[ "$file" == ".." ]] && continue
    [[ "$file" == ".DS_Store" ]] && continue
    [[ "$file" == ".git" ]] && continue
    [[ "$file" == ".gitignore" ]] && continue
    [[ "$file" == ".vscode" ]] && continue
    arr+=("$file")
  done

  cd "$dir"
  echo ${arr[@]}
}
