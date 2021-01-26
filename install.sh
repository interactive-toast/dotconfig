#!/bin/bash

LIST_OF_APPS="cmake clangd nodejs npm neovim git gcc tree curl wget htop 
openssh-client zip unzip clang-format-10 clang-10 clangd-10 clang-tidy-10 
tmux cmus tty-clock picocom make whois texlive-latex-recommended tree qrencode 
imagemagick-6.q16hdri trash-cli stlink-tools rclone rsync"

read -e -p "Enter the relative path of your home directory:"$'\n' RELATIVE_PATH
#check if path is not empty string
if [ -z $RELATIVE_PATH ]
then
	  echo -e "Path is empty string.\nExiting..."
		exit 1
fi
#check if file exist
ABS_PATH=`cd "$RELATIVE_PATH" 2> /dev/null && pwd` # double quotes for paths that contain spaces etc...
if [ ! -e "$ABS_PATH" ] 
then
	  echo -e "Can not find '$RELATIVE_PATH'\nExiting..."
	  exit 1
fi

# check if root
if [ "$EUID" -ne 0 ]
then 
	echo "Please run as root"
	exit 1
fi

# apt-get update
# apt-get upgrade
# apt-get install -y $LIST_OF_APPS

git clone https://github.com/tmux-plugins/tpm $ABS_PATH/.config/tmux/plugins/tpm

git clone https://github.com/interactive-toast/dotconfig $ABS_PATH/.config

# removes the following files if they are there
trash $ABS_PATH/.config $ABS_PATH/.bashrc $ABS_PATH/.bash_logout $ABS_PATH/.profile $ABS_PATH/.inputrc $ABS_PATH/.bash_profile $ABS_PATH/.hushlogin

# symlink the files that belong directly in the home dir
find $ABS_PATH/.config/home_folder_files/ -mindepth 1 -path "*" -exec ln -s {} "$ABS_PATH" \;

# Deletes this file after running
rm -- "$0"
