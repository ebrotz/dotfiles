#! /usr/bin/env bash

PACMAN_OPTS="-Syy --needed"

# Terminal
pacman $PACMAN_OPTS nerd-fonts

# Utilities
pacman $PACMAN_OPTS httpie \
	ripgrep \
	fd \
	hunspell

# Editors
pacman $PACMAN_OPTS neovim

# Golang
pacman $PACMAN_OPTS go \
	delve

# Node.js
pacman $PACMAN_OPTS nodejs-lts-krypton

# Docker
pacman $PACMAN_OPTS dockerfmt

# Web development
pacman $PACMAN_OPTS nvm

# Lua
pacman $PACMAN_OPTS stylua

