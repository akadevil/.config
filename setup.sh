#!/bin/bash

echo "installing zsh"
brew install zsh
echo "set zsh default shell"
chsh -s /usr/local/bin/zsh

git clone https://github.com/powerline/fonts.git
sh fonts/install.sh
rm -rf fonts

echo "installing nvm"
brew update
brew install nvm
[ ! -d "~/.nvm" ] && mkdir ~/.nvm

echo "create and copy zshrc template"
touch ~/.zshrc
pbcopy < ~/.config/zshscripts/templates/.zshrc
pbpaste > ~/.zshrc

echo "installing git aliases"
[ ! -d "~/.gitconfig" ] && touch ~/.gitconfig
pbcopy < ~/.config/zshscripts/templates/.gitconfig
pbpaste > ~/.gitconfig

echo "installing zplug"
brew reinstall zplug

echo "installing alacritty"
brew reinstall --cask alacritty

echo "installing tmux"
brew install tmux

echo "installing elixir"
brew install elixir

echo "installing rust"
curl https://sh.rustup.rs -sSf | sh

echo "installing rvm"
brew install gnupg
gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash
# rvm alias create default 2.7.1

source ~/.zshrc


