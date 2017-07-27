#!/bin/bash

out=/etc/init.d/syndaemon.sh

sudo touch $out
sudo chown `whoami` $out

chmod +x $out
echo -n 'syndaemon -R -K -i 0.5 -d' >$out
