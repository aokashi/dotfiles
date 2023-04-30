#!/bin/bash
#
# Windows Subsystem for Linux (Ubuntu) のインストールファイル
# ・使用シェル fish (ただしデフォルトに設定するとプロファイルが読み取れないため、bash起動後にfishを立ち上げるようにしている)

source ../lib/install_packages.sh

# インストール先のプロファイル
install_profile=~/.profile

# homebrew
[ $(has_command brew) -ne 1 ] && install_homebrew

# anyenv
[ $(has_command anyenv) -ne 1 ] && add_anyenv_init

# (何か $install_profile に対して初期化処理を実行させたい場合はこの中に入れること)

# fish
[ $(has_command fish) -ne 1 ] && add_fish_exec

# インストール
sudo apt install -y \
  build-essential \
  gcc

brew install \
  fish \
  anyenv \
  yarn

anyenv install --init

# そのあと、 $install_profile を開き、 fish の実行が一番最後になっているか確認すること

# fishインストール下準備
#   fish shell は bash と構文が異なるため自動化ができないことからプロファイルで起動するようにする
#   https://launchpad.net/~fish-shell/+archive/ubuntu/release-2
function add_fish_exec() {
  echo "exec fish" >> "$install_profile"
}

function add_anyenv_init() {
  echo 'eval "$(anyenv init -)"' >> "$install_profile"
}
