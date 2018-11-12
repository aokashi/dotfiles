source lib.sh

# https://launchpad.net/~fish-shell/+archive/ubuntu/release-2
sudo apt-add-repository ppa:fish-shell/release-2

sudo apt update

sudo apt install fish

# fish shell は bash と構文が異なるため自動化ができないことから .bash_profile で起動するようにする
echo 'exec fish' >> ~/.bashrc
