#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

sudo apt-get install build-essential linux-source linux-headers-generic -y
sudo apt-get install unity-tweak-tool gnome-tweak-tool libncurses-dev -y
sudo apt-get install ubuntu-restricted-extras -y
