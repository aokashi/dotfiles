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

function installAnyenv() {
  git clone https://github.com/riywo/anyenv ~/.anyenv
  echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/$1
  echo 'eval "$(anyenv init -)"' >> ~/$1
  exec $SHELL -1
}
