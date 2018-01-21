#!/bin/bash

source install.sh

[ $(has "nodebrew") = 0 ] && installNodebrew

for file in wsl/.??*
  link "$dir" "$file"
done

exit 0