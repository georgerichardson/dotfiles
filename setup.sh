#!/bin/bash

# Get dotfiles installation directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sf "$DOTFILES_DIR/.bash_profile" ~
ln -sf "$DOTFILES_DIR/.bashrc" ~
ln -sf "$DOTFILES_DIR/.gitattributes_global" ~
ln -sf "$DOTFILES_DIR/.gitconfig" ~
ln -sf "$DOTFILES_DIR/.gitconfig_global" ~
ln -sf "$DOTFILES_DIR/.tmux.conf" ~
ln -sf "$DOTFILES_DIR/.vimrc" ~
ln -sf "$DOTFILES_DIR/.zshrc" ~
ln -sf "$DOTFILES_DIR/.zsh_exports" ~
ln -sf "$DOTFILES_DIR/.zsh_aliases" ~
