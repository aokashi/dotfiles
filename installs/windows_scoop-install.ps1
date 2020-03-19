# scoop をインストール
# https://github.com/lukesampson/scoop
iwr -useb get.scoop.sh | iex

# 必要なパッケージをインストール
scoop install `
  7zip`
  git`
  graphviz`
  hugo-extended`
  mongodb`
  nvm

# あとは下記の作業も合わせて行ってください。
# ・Windowsの設定から機能追加の画面に移り、 OpenSSH クライアントをインストール
# ・Chocolatey をインストールし、 windows_chocolatey-packages.config を使用して各パッケージを追加
# ・Microsoft Store から必要なソフトウェアを取得、インストール
# ・nvm の設定を済ませ、 yarn を scoop でインストール (https://github.com/coreybutler/nvm-windows/)
