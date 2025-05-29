#!/usr/bin/bash

echo "########## INSTALL APPS ##########"
sudo pacman --noconfirm -S openssh git curl less tree python3 python-pip make cmake gcc ripgrep go npm unzip rust neovim python-pynvim nerd-fonts

echo "########## COPY CONFIGS ##########"
cp -r nvim_config $HOME/.config/nvim

cp bashrc_custom $HOME/.bashrc_custom
echo ". ~/.bashrc_custom" >> $HOME/.bashrc

echo "########## GO DEV ##########"
go install github.com/air-verse/air@latest
echo 'PATH="$PATH:$HOME/go/bin"' >> $HOME/.bash_profile

echo "########## NVIM plugins ##########"
make -C $HOME/.local/share/nvim/lazy/telescope-fzf-native.nvim

echo "########## DONE ##########"

