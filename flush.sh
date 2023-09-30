#!/bin/bash


										###### system default ######

mkdir -p /Users/${USER}/.config


										###### plist configs ######

# iterm configs
sudo ln -s ${PWD}/src/plists/com.googlecode.iterm2.plist ~/Library/Preferences/
# enabling key repeat for vscode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
# setting Screenshot path
mkdir -p ~/Pictures/Screenshots
defaults write com.apple.screencapture location /Users/${USER}/Pictures/Screenshots
# setting Key repeat rate
defaults write -g KeyRepeat -int 5
# setting Delay untile repeat
defaults write -g InitialKeyRepeat -int 15
# setting dock size
defaults write com.apple.dock "tilesize" -int "38" && killall Dock


										#### symlinks and configs ####

###### iterm ######
sudo ln -s ${PWD}/src/config/iterm2 /Users/${USER}/.config
###### nvim ######
sudo ln -s ${PWD}/src/config/nvim /Users/${USER}/.config
###### qBittorrent ######
sudo ln -s ${PWD}/src/config/qBittorrent /Users/${USER}/.config
# bits installination
sudo mkdir -p /Library/Developer/CommandLineTools/usr/include/c++/v1
sudo mkdir -p /usr/local/include/
sudo ln -s ${PWD}/src/bits /usr/local/include/
sudo ln -s ${PWD}/src/bits /Library/Developer/CommandLineTools/usr/include/c++/v1 # for intellisense..


# setting gcc path
if [[ ! -f "/opt/homebrew/bin/gcc-12" && "/opt/homebrew/bin/g++-12" ]];
then
    echo "gcc-12 not found! program exiting.."
    exit
fi
sudo mkdir -p /usr/local/bin
sudo ln -s /opt/homebrew/bin/gcc-12 /usr/local/bin/gcc
sudo ln -s /opt/homebrew/bin/g++-12 /usr/local/bin/g++





