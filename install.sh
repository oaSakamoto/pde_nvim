#!/usr/bin/sh

NEOVIM_PDE=~/.config/pde_nvim
export NEOVIM_PDE

rm -rf "$NEOVIM_PDE"

mkdir -p "$NEOVIM_PDE"/share
mkdir -p "$NEOVIM_PDE"/nvim

stow --restow --target="$NEOVIM_PDE"/nvim .

alias vi='XDG_DATA_HOME=$NEOVIM_PDE/share XDG_CACHE_HOME=$NEOVIM_PDE XDG_CONFIG_HOME=$NEOVIM_PDE nvim'
