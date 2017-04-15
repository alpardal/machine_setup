#!/bin/bash

set -e

files="
  basics
  git
  zsh
  dotfiles
  synapse
  vim
  apps
  ruby
  node
  postgresql
  haskell
  fonts
"

for file in $files; do
  echo "Installing '${file}'"
  (source "installers/${file}.sh")
  echo "-------------------------------------------------------------"
done
