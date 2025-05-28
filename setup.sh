#!/usr/bin/env nix-shell
#!nix-shell -i bash

# Get the directory containing the script
script_dir=$(dirname "$(readlink -f "$0")")
cd $script_dir

# Create fish functions directory if it doesn't exist
mkdir -p ~/.config/fish/functions

# Stow each function file
for func_file in "$script_dir"/functions/*.fish; do
  if [ -f "$func_file" ]; then
    func_name=$(basename "$func_file")
    echo "Stowing $func_name to ~/.config/fish/functions/"
    ln -sf "$func_file" ~/.config/fish/functions/
  fi
done

exit 0
