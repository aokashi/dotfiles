#!/bin/bash
#
# Windows Subsystem for Linux (Ubuntu) のインストールファイル
# ・使用シェル fish (ただしデフォルトに設定するとプロファイルが読み取れないため、bash起動後にfishを立ち上げるようにしている)

source lib/install_packages.sh

# インストール先のプロファイル
install_profile=~/.profile

# anyenvインストール
[ $(has_command anyenv) -ne 1 ] && install_anyenv "$install_profile"

# fishインストール
[ $(has_command fish) -ne 1 ] && echo "exec /usr/bin/fish" >> "$install_profile"
