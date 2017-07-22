#!/bin/bash

sudo add-apt-repository ppa:indicator-multiload/stable-daily -y
sudo apt-get update

apps="transmission xtrlock indicator-multiload silversearcher-ag virtualbox okular okular-extra-backends arc-theme vlc"

for app in $apps; do
  sudo apt-get install $app -y
done
