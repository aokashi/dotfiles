# https://github.com/lukesampson/scoop
iwr -useb get.scoop.sh | iex

# 必要なパッケージをインストール
scoop install `
  git`
  graphviz`
  hugo-extended`
  mongodb`
  nvm`
  openssh`
  yarn
