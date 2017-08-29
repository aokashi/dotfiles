#!/bin/bash

dir=$(pwd)

# Visual Studio Code
ln -sf $dir/vscode/settings.json ~/.config/Code/User/settings.json
rm -r ~/.config/Code/User/snippets
ln -sfn $dir/vscode/snippets ~/.config/Code/User/

# vim
ln -sf $dir/.vimrc ~/.vimrc
ln -sf $dir/.vim ~/

# gitconfig
ln -sf $dir/.gitconfig ~/.gitconfig

# for Linux
if [ $1 = "linux" ]; then
  # xmodmap
  ln -sf $dir/.Xmodmap ~/.Xmodmap
  # xprofile
  ln -sf $dir/.xprofile ~/.xprofile
  # zshrc
  cat $dir/.zshrc >> ~/.zshrc
fi

exit 0
