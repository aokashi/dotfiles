#!/bin/bash

source lib.sh

for file in .??*
do
  [ "$file" = ".git" ] && continue
  [ "$file" = ".gitignore" ] && continue
  [ "$file" = ".vscode" ] && continue
  link "$dir" "$file"
done
