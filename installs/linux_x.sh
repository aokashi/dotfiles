#!/bin/bash

source install.sh

# このファイルは未完成です！！
# VSCode
ln -snfv $dir/vscode/settings.json ~/.config/Code/User/settings.json
rm -r ~/.config/Code/User/snippets
ln -snfv $dir/vscode/snippets ~/.config/Code/User/

[ $(has "anyenv") = 0 ] && installAnyenv .bashrc

cd linux
for file in .??*
do
  cat "$file" >> ~/"$file"
done

exit 0
