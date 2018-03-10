dir=$(pwd)

function has() {
  if type "$1" > /dev/null 2>&1
  then
    echo 1
  else
    echo 0
  fi
}

function link() {
  ln -snfv "$1"/"$2" ~/
}

function installNodebrew() {
  curl -L git.io/nodebrew | perl - setup
}
