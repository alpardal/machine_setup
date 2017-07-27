#!/bin/bash

set -e

files="
  basics
  git
  zsh
  vim
  dotfiles
  synapse
  syndaemon
  apps
  ruby
  node
  postgresql
  haskell
  rust
  fonts
"

for file in $files; do
  echo "Installing '${file}'"
  (source "installers/${file}.sh")
  echo "-------------------------------------------------------------"
done
