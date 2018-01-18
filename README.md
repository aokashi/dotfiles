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
- lib.sh
  - dotfiles のインストールに必要な関数を集めたファイルです。
  - ソフトウェアのインストール有無の確認や設定ファイルのリンクなどが含まれています。

# 含まれている項目

## エイリアス設定
- .bash_profile
  - macOSのシェルのファイルです
- .vimrc, .vim/
  - vimの設定ファイルです
  - vimディレクトリにはカラースキームの設定ファイルが含まれています
- .latexmkrc
  - LaTeXを簡単に制作できる便利なファイルです

## 直接コピー
- .zshrc
  - Arch Linuxのシェルのファイルです
  - Arch Linuxのシェル設定パッケージ(grml-zsh-config)が入っている都合上、片道方向のコピーになります
- vscode/
  - Visual Studio Codeの設定ディレクトリです

# インストールには使わない項目
オプションファイルです。必要に応じてコピーします。

- fonts/
  - Linuxのフォント設定ファイルです

# インストールするには
- 各プラットフォームに応じたインストールファイルをご利用ください。
- 加えて、gnome-terminal にプロファイルを追加したい場合は setup-theme.sh を実行します。

## 利用しているファイル
- nodebrew - https://github.com/hokaccha/nodebrew
- Tomorrow Night - https://github.com/chriskempson/tomorrow-theme
- [ArchLinux] LaTeX環境を整える - http://qiita.com/Aruneko/items/6d073447bff91addd512
