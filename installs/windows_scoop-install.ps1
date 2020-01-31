# scoop をインストール
# https://github.com/lukesampson/scoop
iwr -useb get.scoop.sh | iex

# 必要なパッケージをインストール
# FIXME: このタイミングではまだ nvm の設定が終わっていないため、
#     このまま yarn のインストールを進めると、 node が無いと怒られます。
#     現在、対策方法を検討中です。
scoop install `
  7zip`
  git`
  graphviz`
  hugo-extended`
  mongodb`
  nvm`
  yarn

# あとは下記の作業も合わせて行ってください。
# ・Windowsの設定から機能追加の画面に移り、 OpenSSH クライアントをインストール
# ・Chocolatey をインストールし、 windows_chocolatey-packages.config を使用して各パッケージを追加
# ・Microsoft Store から必要なソフトウェアを取得、インストール
