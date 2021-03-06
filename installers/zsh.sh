#!/bin/bash

sudo apt-get install zsh -y
chsh -s `which zsh`

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# bullet train theme:
themes_dir=$HOME/.oh-my-zsh/custom/themes/
mkdir -p $themes_dir

theme_url='https://raw.githubusercontent.com/skylerlee/zeta-zsh-theme/master/zeta.zsh-theme'
curl $theme_url -o $themes_dir/zeta.zsh-theme
