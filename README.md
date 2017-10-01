# dotfiles
このリポジトリは、自身が利用するアプリケーションの設定ファイルを置いています。

dotfiles だからといって、. から始まるファイルだけしか無いわけではありません。

# ファイル名の付け方について
原則ファイル名はプログラムで指定されている設定ファイル名に従います。

# 含まれている項目
- .bash_profile
  - macOSのシェルのファイルです
- .zshrc
  - Arch Linuxのシェルのファイルです
  - Arch Linuxのシェル設定パッケージ(grml-zsh-config)が入っている都合上、片道方向のコピーになります
- .vimrc, .vim/
  - vimの設定ファイルです
  - vimディレクトリにはカラースキームの設定ファイルが含まれています
- .latexmkrc
  - LaTeXを簡単に制作できる便利なファイルです
- vscode/
  - Visual Studio Codeの設定ディレクトリです

# インストールには使わない項目
オプションファイルです。必要に応じてコピーします。

- fonts/
  - Linuxのフォント設定ファイルです

# インストールするには
- Windows環境の場合は install.bat を実行します。
- UNIX系環境の場合は install.sh を実行します。
  - 引数に mac と加えるとmacOS上で必要な項目が加わります。
  - 引数に linux と加えるとLinux上で必要な項目が加わります。
- 加えて、gnome-terminal にプロファイルを追加したい場合は setup-theme.sh を実行します。
- VPS環境の場合はSSH接続せず install_vps.sh を実行します(最近手を加えていないです)。

## 利用しているファイル
- Tomorrow Night - https://github.com/chriskempson/tomorrow-theme
- [ArchLinux] LaTeX環境を整える - http://qiita.com/Aruneko/items/6d073447bff91addd512
