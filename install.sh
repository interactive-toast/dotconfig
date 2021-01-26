#!/bin/bash

LIST_OF_APPS="cmake clangd nodejs npm neovim git gcc tree curl wget htop 
openssh-client zip unzip clang-format-10 clang-10 clangd-10 clang-tidy-10 
tmux cmus tty-clock picocom make whois texlive-latex-recommended tree qrencode 
imagemagick-6.q16hdri trash-cli stlink-tools rclone rsync"

apt-get update
apt-get upgrade
apt-get install -y $LIST_OF_APPS

git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
trash ~/.config ~/.bashrc ~/.bash_logout ~/.profile ~/.inputrc ~/.bash_profile
git clone https://github.com/interactive-toast/dotconfig ~/.config
bash ~/.config/symlink_other_configs.sh

# Deletes this file after running
rm -- "$0"
