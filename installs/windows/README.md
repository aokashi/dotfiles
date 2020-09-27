# Windows 環境構築手順

1. Windows の設定から機能追加の画面に移り、 OpenSSH クライアントをインストール
2. Microsoft Store から必要なソフトウェアを取得、インストール
3. GUI ソフトウェアからインストーラーをダウンロード、インストール

### scoop_install
1. Scoop をインストール (`scoop_install.ps1`)
2. nvm の設定を済ませ、 yarn を scoop でインストール
    - https://github.com/coreybutler/nvm-windows/

### powershell_setup
参考元: [チュートリアル: Windows ターミナルで　Powerline をセットアップする](https://docs.microsoft.com/ja-jp/windows/terminal/tutorials/powerline-setup)

1. [PowerShellCore をインストール](https://github.com/PowerShell/PowerShell)
2. Powerline フォント ([Cascadia Code](https://github.com/microsoft/cascadia-code)) をインストール
3. 管理者権限で PowerShell をセットアップ (`powershell_setup.ps1`)
    - もしかしたら管理者権限でなくても OK かもしれない
4. `(ドキュメントフォルダー)\PowerShell\Microsoft.PowerShell_profile` に下記を追記
    ```
    Import-Module posh-git
    Import-Module oh-my-posh
    ```

Windows Terminal の設定も必要になります。設定ファイルは予め用意するか、自分で作成してください (この辺は後々手順を明記する予定です)。

## GUIソフトウェア
下記のソフトウェアは配布元のサイトに移動して手動でダウンロード、インストールしてください。

(もしかしたら Winget が正式版になり、パッケージ数が増えると、そっちに移るかもしれないです。)

- [1Password](https://1password.com/jp/)
- [CLIP STUDIO](https://www.clipstudio.net/)
- [cluster](https://cluster.mu/)
- [CrystalDiskInfo](https://crystalmark.info/ja/)
- [Discord](https://discordapp.com/)
- [Docker](https://www.docker.com/)
- [Dropbox](https://dropbox.com/)
- [Firefox](https://www.mozilla.org/ja/)
- [foobar2000](https://www.foobar2000.org/)
- [GIMP](https://www.gimp.org/)
- [Google Chrome](https://www.google.com/intl/ja_jp/chrome/)
- [Minecraft](https://www.minecraft.net/ja-jp)
- [OBS Studio](https://obsproject.com/ja/)
- [PowerToys](https://github.com/microsoft/PowerToys)
- [RPGツクールMV](https://tkool.jp/)
- [Scribus](https://www.scribus.net/)
- [Steam](https://store.steampowered.com/)
- [Tiled](https://www.mapeditor.org/)
- [Typora](https://typora.io/)
- [VisualStudio Code](https://code.visualstudio.com/)
- [Wireshark](https://www.wireshark.org/)
- [Zoom](https://zoom.us/)
