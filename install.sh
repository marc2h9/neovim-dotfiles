#!/bin/bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
fi

USER=$(whoami)
DIR=$(pwd)

function symbolic-link () {
  ln -s $DIR/nvim/ /home/$USER/.config/
}

function cleanup-message() {
  clear
  echo CONFIG SUCCESSFULLY INSTALLED!
  echo DO NOT DELETE THE CURRENT DIRECTORY
}

if [ "$OS" = "Ubuntu" ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

  sudo apt-get update
  sudo apt-get install curl tar ripgrep unzip -y
  snap install node

  symbolic-link
  cleanup-message
elif [ "$OS" = "Arch Linux" ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  
  sudo pacman -Syu
  sudo pacman -S --noconfirm curl tar ripgrep npm unzip neovim

  symbolic-link
  cleanup-message
fi
