#!/usr/bin/env zsh

setopt EXTENDED_GLOB

home="${ZDOTDIR:-$HOME}/.zprezto"
if [[ -a "$home" ]]; then
  rm -rf $home
fi

ln -s "$(pwd -P)" "$home"

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  target="${ZDOTDIR:-$HOME}/.${rcfile:t}"
  if [[ -h "$target" || -a "$target" ]]; then
    rm "$target"
  fi
  ln -s "$rcfile" "$target"
done

