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
  libssl-dev
  libncurses-dev
  libncurses5-dev
  ubuntu-restricted-extras
  curl
  tree
  tmux
  exa
  bat
  silversearcher-ag
  jq
  virtualbox
"

for pack in $packages; do
  sudo apt-get install $pack -y
done

sudo ln -s /usr/bin/batcat /usr/bin/bat
