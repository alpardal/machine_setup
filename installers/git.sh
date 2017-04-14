#!/bin/bash

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y

mkdir -p ~/.bin

diff_path='https://raw.githubusercontent.com/git/git/master/contrib/diff-highlight/diff-highlight'
diff_file="$HOME/.bin/diff-highlight"

curl $diff_path -o $diff_file
chmod +x $diff_file
