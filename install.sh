#!/bin/bash

exectime=$(date +"%Y%m%d")

if [ -e "$HOME/.config/starship.toml" ]; then
  mv "$HOME/.config/starship.toml" "$HOME/.config/starship.toml.$exectime.bak"
fi
if [ -e "$HOME/.config/sheldon" ]; then
  mv "$HOME/.config/sheldon" "$HOME/.config/sheldon.$exectime.bak"
fi
if [ -e "$HOME/.config/zsh" ]; then
  mv "$HOME/.config/zsh" "$HOME/.config/zsh.$exectime.bak"
fi
if [ -e "$HOME/.zshrc" ]; then
  mv "$HOME/.zshrc" "$HOME/.zshrc.$exectime.bak"
fi

mkdir -p "$HOME/.config"
ln -s "$PWD/starship/starship.toml" "$HOME/.config/starship.toml"
ln -s "$PWD/sheldon" "$HOME/.config/sheldon"
cp "$PWD/zsh/.template/*.zsh" "$PWD/zsh/conf.d/"
ln -s "$PWD/zsh" "$HOME/.config/zsh"
ln -s "$PWD/.zshrc" "$HOME/.zshrc"

if ! type "sheldon" &>/dev/null; then
  echo "sheldon is not installed"
  echo 'please run `brew install sheldon`'
fi
if ! type "starship" &>/dev/null; then
  echo "starship is not installed"
  echo 'please run `brew install starship`'
fi
if ! type "fzf" &>/dev/null; then
  echo "fzf is not installed"
  echo 'please run `brew install fzf`'
fi
