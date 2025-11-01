#!/bin/bash

DOT_FILES=(.zshenv .zshrc .vimrc .gitignore_global .Brewfile)
for file in "${DOT_FILES[@]}"; do
  ln -fs "${PWD}/${file}" "${HOME}/${file}"
done

mkdir -p "${HOME}/.zsh/functions"
mkdir "${HOME}/.vim"
touch "${$HOME}/.zsh/.zsecret"

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh -O "${HOME}/.zsh/functions/_git"
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O "${HOME}/.git-completion.bash"
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O "${HOME}/.git-prompt.sh"

git clone https://github.com/tomasr/molokai "${$HOME}/.vim"
