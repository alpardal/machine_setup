#!/bin/bash

sudo add-apt-repository ppa:indicator-multiload/stable-daily -y
sudo apt-get update

apps="curl tree tmux transmission xtrlock indicator-multiload silversearcher-ag virtualbox okular okular-extra-backends"

for app in $apps; do
  sudo apt-get install $app -y
done
