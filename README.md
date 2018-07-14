# dotfiles
このリポジトリは、自身が利用するアプリケーションの設定ファイルを置いています。

dotfiles だからといって、. から始まるファイルだけしか無いわけではありません。

# 各ファイルについて
- install.sh
  - UNIX系OSに最低限必要な項目をインストールします。
  - 各プラットフォーム(macOS, Linux, WSL, ...)をインストールする際はまずこのファイルを参照します。
- install_(platform).sh
  - 各プラットフォームのインストールに使うファイルです。
- install_windows.ps1
  - Windows用のインストールファイルです。
  - 現時点では VSCode のみの取り扱いです。
- lib.sh
  - dotfiles のインストールに必要な関数を集めたファイルです。
  - ソフトウェアのインストール有無の確認や設定ファイルのリンクなどが含まれています。

# 含まれているけどインストールには使わない項目
オプションファイルです。必要に応じてコピーします。

- fonts/
  - Linuxのフォント設定ファイルです

# インストールするには
- 各プラットフォームに応じたインストールファイルをご利用ください。
- 加えて、gnome-terminal にプロファイルを追加したい場合は setup-theme.sh を実行します。

## 利用しているファイル
- anyenv - https://github.com/riywo/anyenv
- Tomorrow Night - https://github.com/chriskempson/tomorrow-theme
- [ArchLinux] LaTeX環境を整える - http://qiita.com/Aruneko/items/6d073447bff91addd512
