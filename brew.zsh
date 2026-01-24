#! /bin/zsh

# Linearmouse is used to get rid of natural scrolling when using a traditional
# mouse.
brew install --cask linearmouse
brew install httpie
brew install --cask font-0xproto-nerd-font
brew install pkgconf
# Most of our tooling will require a 'system' NodeJS, since they will do
# 'npm install ...' on installation.
brew install node
# Spellchecker for LibreOffice, OpenOffice, etc. Will be used by gospel.
brew install hunspell
# A better grep that honors gitignore, skips binaries, and skips hidden files.
# It will also be used by neovim.
brew install ripgrep

brew install fd
brew install neovim

# Lua
brew install stylua

# Java

# Golang
brew install go
brew install delve

# Web development
brew install nvm

## TODO Should make '0xproto nerd font the default system prompt

