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

# homebrew をインストールします
install_homebrew() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/aokashi/.profile
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
}
