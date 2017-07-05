#!/bin/bash

mkdir -p ~/.fonts

sudo apt-get install ttf-ancient-fonts -y

roboto='https://github.com/powerline/fonts/blob/master/RobotoMono/Roboto%20Mono%20for%20Powerline.ttf?raw=true'
curl $roboto -L -o ~/.fonts/Roboto\ Mono\ for\ Powerline\ Regular.ttf

ubuntu_mono='https://github.com/powerline/fonts/blob/master/UbuntuMono/Ubuntu%20Mono%20derivative%20Powerline.ttf?raw=true'
curl $ubuntu_mono -L -o ~/.fonts/Ubuntu\ Mono\ derivative\ Powerline\ Regular.ttf

hack='https://github.com/powerline/fonts/blob/master/Hack/Hack-Regular.ttf?raw=true'
curl $hack -L -o ~/.fonts/Hack\ derivative\ Powerline\ Regular.ttf

sudo fc-cache -f -v
