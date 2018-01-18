#!/bin/bash

source install.sh

# VSCode
ln -sf $dir/vscode/settings.json ~/.config/Code/User/settings.json
rm -r ~/.config/Code/User/snippets
ln -sfn $dir/vscode/snippets ~/.config/Code/User/

[ $(has "nodebrew") = 0 ] && installNodebrew

for file in linux/.??*
do
  cat "$dir"/"$file" >> ~/"$file"
done

exit 0