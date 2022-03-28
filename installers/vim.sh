#!/bin/bash

mkdir -p $HOME/bin
cd $HOME/bin

if [ -d $HOME/bin/vim ]; then
    rm -rf $HOME/bin/vim
fi

# dependencies:
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    make clang libtool-bin libxt-dev libpython3-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev -y

git clone https://github.com/vim/vim.git
ln -fs $HOME/dotfiles/run_vim_configure_script $HOME/bin/run_vim_configure_script
./run_vim_configure_script

cd vim
make
sudo make install

# install vim-plug:
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\n    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
