#!/bin/bash

DOT_FILES=(.zshenv .zshrc .vimrc .gitignore_global)
for file in "${DOT_FILES[@]}"; do
  ln -fs "$PWD"/"$file" "$HOME"/"$file"
done

cp .Brewfile "$HOME"/.Brewfile
brew bundle --global
