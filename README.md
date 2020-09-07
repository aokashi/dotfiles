# dotfiles
このリポジトリは、自身が利用するアプリケーションの設定ファイルを置いています。

dotfiles だからといって、. から始まるファイルだけしか無いわけではありません。

# ディレクトリ構造
- etc ... ホームディレクトリ以外に配置する設定ファイル。
- installs
    - lib ... 実行で利用する関数をまとめたライブラリファイル
    - (platform) ... 各プラットフォームのインストール方法とインストール実行ファイル
- links ... 設定ファイルへのシンボリックリンク作成の実行ファイル。
    - lib ... 実行で利用する関数をまとめたライブラリファイル
    - (platform)-link.(sh|ps1) ... 実行ファイル
- .* ... ホームディレクトリに配置する設定ファイル。

## 注意事項
実行ファイルやライブラリファイルなどで、特定のプラットフォームに依存する場合はファイル名やディレクトリ名の先に (プラットフォーム名)- を加えてください。

また、必要であれば利用するパッケージマネージャーの名前も加えてください。

- Ubuntu Desktop用のインストール実行ファイル ... ubuntu_desktop-install.sh
- Windows用のシンボリックリンク作成ファイル ... windows-link.ps1
- Chocolatey(Windows)のインストールするパッケージ一覧 ... windows_chocolatey-packages.config

その他、各設定ファイルやライブラリファイルについてはファイル内のコメントをご確認ください。

## 利用しているファイル
- anyenv - https://github.com/riywo/anyenv
- Tomorrow Night - https://github.com/chriskempson/tomorrow-theme
- [ArchLinux] LaTeX環境を整える - http://qiita.com/Aruneko/items/6d073447bff91addd512
