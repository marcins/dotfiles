#!/bin/bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

brew install zsh
sudo chsh -s /usr/local/bin/fish $USER

brew tap caskroom/versions

brew install coreutils
brew install maven
brew install yarn --without-node

brew cask install 1password
brew cask install visual-studio-code
brew cask install quicksilver
brew cask install iterm2
brew cask install java8
brew cask install acorn
brew cask install carbon-copy-cloner
brew cask install charles
brew cask install docker
brew cask install gpg-suite
brew cask install istat-menus
brew cask install mailplane
brew cask install pgadmin4
brew cask install postman
brew cask install screenflow
brew cask install sketch
brew cask install sourcetree
brew cask install sublime-text
brew cask install virtualbox
brew cask install spectacle
brew cask install aerial
brew cask install little-snitch
brew cask install dropbox

defaults write NSGlobalDomain AppleInterfaceStyle 'Dark'
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock orientation left
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize 69

# top left screen corner — start screen saver
defaults write com.apple.dock wvous-tl-corner -int 5
defaults write com.apple.dock wvous-tl-modifier -int 0

# top right screen corner — disable screen saver
defaults write com.apple.dock wvous-tr-corner -int 6
defaults write com.apple.dock wvous-tr-modifier -int 0

chflags nohidden ~/Library/
killall Dock
killall SystemUIServer

