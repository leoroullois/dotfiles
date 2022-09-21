#!/bin/bash

# NVIM
rm -rf ~/.config/nvim && ln -s ~/.dotfiles/nvim ~/.config/

# Bash & zsh
rm -f ~/.bashrc && ln -s ~/.dotfiles/.bashrc ~/.bashrc
rm -f ~/.zshrc && ln -s ~/.dotfiles/.zshrc ~/.zshrc

# TMUX
rm -rf ~/.tmux && ln -s ~/.dotfiles/.tmux ~/.tmux
rm -f ~/.tmux.conf && ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

