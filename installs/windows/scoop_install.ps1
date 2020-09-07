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
  vim
