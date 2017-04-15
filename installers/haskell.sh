#!/bin/bash

sudo apt-get install haskell-platform -y
cabal update
stack upgrade
