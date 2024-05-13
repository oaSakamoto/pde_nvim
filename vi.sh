#!/usr/bin/sh

NEOVIM_PDE=~/.config/pde_nvim
export NEOVIM_PDE


alias vi="XDG_DATA_HOME=$NEOVIM_PDE/share XDG_CACHE_HOME=$NEOVIM_PDE XDG_CONFIG_HOME=$NEOVIM_PDE nvim"

vi $@
