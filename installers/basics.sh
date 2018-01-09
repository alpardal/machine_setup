#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

packages="
  build-essential
  linux-source
  linux-headers-generic
  unity-tweak-tool
  gnome-tweak-tool
  libncurses-dev
  ubuntu-restricted-extras
  curl
  tree
  tmux
  silversearcher-ag
  jq
  virtualbox
"

for pack in $packages; do
  sudo apt-get install $pack -y
done
