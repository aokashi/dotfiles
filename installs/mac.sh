#!/bin/bash

source install.sh

# このファイルは未完成です！！
# VSCode
cp $dir/vscode/settings.json ~/Library/Application\ Support/Code/User/
cp -r $dir/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets/

exit 0