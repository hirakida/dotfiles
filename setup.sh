#!/bin/bash

DOT_FILES=(.zshenv .vimrc .gitignore_global .Brewfile)
for file in "${DOT_FILES[@]}"; do
  ln -fs "${PWD}/${file}" "${HOME}/${file}"
done

mkdir -p "${HOME}/.zsh/functions"
ZSH_DOT_FILES=(.zshenv .zshrc .zfunctions)
for file in "${ZSH_DOT_FILES[@]}"; do
  ln -fs "${PWD}/.zsh/${file}" "${HOME}/.zsh/${file}"
done

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh -O "${HOME}/.zsh/functions/_git"
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O "${HOME}/.git-completion.bash"
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O "${HOME}/.git-prompt.sh"
