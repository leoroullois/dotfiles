#!/bin/bash

rm -rf ~/.config/nvim && ln -s ~/.dotfiles/nvim ~/.config/

rm -f ~/.bashrc && ln -s ~/.dotfiles/.bashrc ~/.bashrc
rm -f ~/.zshrc && ln -s ~/.dotfiles/.zshrc ~/.zshrc
