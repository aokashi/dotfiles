#!/bin/bash

source install.sh

# VSCode
cp $dir/vscode/settings.json ~/Library/Application\ Support/Code/User/
cp -r $dir/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets/

exit 0