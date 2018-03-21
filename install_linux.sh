#!/bin/bash

source install.sh

# VSCode
ln -snfv $dir/vscode/settings.json ~/.config/Code/User/settings.json
rm -r ~/.config/Code/User/snippets
ln -snfv $dir/vscode/snippets ~/.config/Code/User/

[ $(has "nodebrew") = 0 ] && installNodebrew

cd linux
for file in .??*
do
  cat "$file" >> ~/"$file"
done

exit 0
