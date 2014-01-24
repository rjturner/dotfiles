#!/bin/sh
# https://github.com/thoughtbot/dotfiles

echo "Installing dotfiles into ~"
for name in *; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      echo "WARNING: $target exists but is not a symlink."
    fi
  else
    if [ "$name" != 'install.sh' ] && [ "$name" != 'README.md' ]; then
      echo "Creating $target"
      ln -s "$PWD/$name" "$target"
    fi
  fi
done

echo "Installing install.sh into .git/hooks/post-merge"
ln -s -f ../../install.sh .git/hooks/post-merge
