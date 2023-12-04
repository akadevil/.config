#!/bin/bash

source brew_formulas.sh
source zshscripts/.constants
source zshscripts/.functions

printg "Installing zsh..."
brew install zsh

printg "Configuring zsh as default shell..."
chsh -s /usr/local/bin/zsh

printg "Installing powerine fonts... "
git clone https://github.com/powerline/fonts.git
sh fonts/install.sh
rm -rf fonts

printg "Installing nvm..."
brew update
brew install nvm
[ ! -d "~/.nvm" ] && mkdir ~/.nvm

printg "Create and copy zshrc template"
touch ~/.zshrc
pbcopy < ~/.config/zshscripts/templates/.zshrc
pbpaste > ~/.zshrc

# printg "Installing git aliases..."
# [ ! -d "~/.gitconfig" ] && touch ~/.gitconfig
# pbcopy < ~/.config/zshscripts/templates/.gitconfig
# pbpaste > ~/.gitconfig

printg "Installing tmux config template..."
[ ! -d "~/.tmux.conf" ] && touch ~/.tmux.conf
pbcopy < ~/.config/zshscripts/templates/.tmux.conf && pbpaste > ~/.tmux.conf

printg "Installing rvm..."
brew install gnupg
gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash
# rvm alias create default 2.7.1

printg "Installing rust..."
curl https://sh.rustup.rs -sSf | sh

for formula in ${formulas[@]}
do
  printg "Installing $formula..."
  brew install $formula
done

brew install --cask dash

source ~/.zshrc
