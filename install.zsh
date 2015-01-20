#!/usr/bin/env zsh

setopt EXTENDED_GLOB
for rcfile in "$(pwd -P)"/runcoms/^README.md(.N); do
  target="${ZDOTDIR:-$HOME}/.${rcfile:t}"
  if [[ -h "$target" || -a "$target" ]]; then
    rm "$target"
  fi
  ln -s "$rcfile" "$target"
done

