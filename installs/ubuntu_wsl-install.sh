#!/bin/bash
#
# Windows Subsystem for Linux (Ubuntu) のインストールファイル
# ・使用シェル fish (ただしデフォルトに設定するとプロファイルが読み取れないため、bash起動後にfishを立ち上げるようにしている)

source lib/install_packages.sh

# インストール先のプロファイル
install_profile=~/.profile
echo "source ~/.path_profile" >> "$install_profile"

# anyenv
[ $(has_command anyenv) -ne 1 ] && install_anyenv
# fish
[ $(has_command fish) -ne 1 ] && add_fish_repository_and_exec
# yarn
[ $(has_command yarn) -ne 1 ] && add_yarn_repository

# パッケージ更新
sudo apt update

# インストール
sudo apt install -y \
  fish

# インストール (追加パッケージ無し)
sudo apt install -y --no-install-recommends \
  yarn


# fishインストール下準備
#   fish shell は bash と構文が異なるため自動化ができないことからプロファイルで起動するようにする
#   https://launchpad.net/~fish-shell/+archive/ubuntu/release-2
function add_fish_repository_and_exec() {
  sudo apt-add-repository ppa:fish-shell/release-3
  echo "exec /usr/bin/fish" >> "$install_profile"
}

# yarnリポジトリ追加
#   https://yarnpkg.com/ja/docs/install#debian-stable
function add_yarn_repository() {
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
}
