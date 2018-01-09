#!/bin/bash

set -e

files="
  basics
  git
  ruby
  node
  postgresql
  haskell
  rust
  fonts
  synapse
  zsh
  vim
  dotfiles
  apps
"

for file in $files; do
  echo "Installing '${file}'"
  (source "installers/${file}.sh")
  echo "-------------------------------------------------------------"
done
