#!/bin/bash

source install.sh

[ $(has "nodebrew") = 0 ] && installNodebrew

for file in wsl/.??*
  cat "$dir"/"$file" >> ~/"$file"
done

exit 0