#!/bin/bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
fi

if [ "$OS" = "Ubuntu" ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

  sudo apt-get update
  sudo apt-get install curl tar ripgrep -y
  snap install node

  USER=$(whoami)
  ln -s /home/neovim-dotfiles/nvim/ /home/$USER/.config/
  clear
  echo CONFIG SUCCESSFULLY INSTALLED!
  echo DO NOT DELETE THE CURRENT DIRECTORY

elif [ "$OS" = "Arch" ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

  sudo pacman -Syu
  sudo pacman -S --noconfirm neovim curl tar ripgrep npm

  USER=$(whoami)
  ln -s /home/neovim-dotfiles/nvim/ /home/$USER/.config/
  clear
  echo CONFIG SUCCESSFULLY INSTALLED!
  echo DO NOT DELETE THE CURRENT DIRECTORY

fi
