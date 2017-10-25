#!/bin/bash

# sudo apt-get install haskell-platform -y
# cabal update
curl -sSL https://get.haskellstack.org/ | sh
stack setup
stack upgrade
stack install hlint ghc-mod
