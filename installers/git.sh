#!/bin/bash

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y

mkdir -p ~/.bin

src_path='/usr/share/doc/git/contrib/diff-highlight/'
(cd $src_path && sudo make)

diff_file="$HOME/.bin/diff-highlight"
user=`whoami`

sudo cp "${src_path}/diff-highlight" $diff_file -f
sudo chown $user $diff_file
chmod +x $diff_file

# libsecret credential helper:
sudo apt-get install libsecret-1-0 libsecret-1-dev
sudo make --directory=/usr/share/doc/git/contrib/credential/libsecret
git config --global credential.helper \
   /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
