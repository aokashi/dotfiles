#!/bin/bash

source lib.sh

for file in .??*
do
  [ "$file" = ".git" ] && continue
  [ "$file" = ".gitignore" ] && continue
  link "$dir" "$file"
done
