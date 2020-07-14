#!/bin/bash

DOT_FILES=(.zshenv .vimrc .gitignore_global)
for file in "${DOT_FILES[@]}"; do
  ln -fs "${PWD}/${file}" "${HOME}/${file}"
done

mkdir -p "${HOME}/.zsh"
ZSH_DOT_FILES=(.zshenv .zshrc .zfunctions)
for file in "${ZSH_DOT_FILES[@]}"; do
  ln -fs "${PWD}/.zsh/${file}" "${HOME}/.zsh/${file}"
done

cp .Brewfile "${HOME}/.Brewfile"
brew bundle --global
