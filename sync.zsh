#!/usr/bin/env zsh

upstream="sorin-ionescu/prezto"

remotes=("${(@f)$(git remote)}")

if [[ ${remotes[(r)upstream]} != upstream ]]; then
   git remote add upstream "https://github.com/"$upstream
fi

git fetch upstream
git checkout master
git merge upstream/master
git submodule update --init --recursive