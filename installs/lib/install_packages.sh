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

# anyenvをインストールします
# $1 anyenv のPATH設定を入れるファイル (.bashrc とか)
install_anyenv() {
  git clone https://github.com/riywo/anyenv ~/.anyenv
  echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> $1
  echo 'eval "$(anyenv init -)"' >> $1
}
