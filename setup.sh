#!/bin/bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

brew install zsh
sudo chsh -s /usr/local/bin/zsh $USER

brew tap caskroom/versions


brew install coreutils
brew install maven
brew install mvnvm
brew install yarn
brew install shellcheck
brew install wget
brew install watchman
brew install git
brew install util-linux
brew install yubico-pam
brew install terminal-notifier
brew install jq

brew cask install 1password
brew cask install visual-studio-code
brew cask install quicksilver
brew cask install iterm2
brew cask install adoptopenjdk8
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
brew cask install dash
brew cask install insomnia
brew cask install intellij-idea
brew cask install vlc

brew tap caskroom/fonts
brew cask install font-fira-code

brew tap atlassian/micros ssh://git@stash.atlassian.com:7997/micros/micros-cli-homebrew-tap.git
brew tap atlassian/micros-tap ssh://git@stash.atlassian.com:7997/micros/homebrew-tap.git
brew install micros-cli
brew install atlas-cli

atlas plugin install -n slauth


# VSCode bits
mkdir -p ~/Library/Application Support/Code/User
ln -s "$(pwd)/vscode/settings.json" "/Users/${USER}/Library/Application Support/Code/User/settings.json"

while read in; do code --install-extension "$in"; done < vscode/extensions.txt

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


# only put the computer to sleep after 30 minutes on battery
sudo pmset -b sleep 30

# disable powernap when connected
sudo pmset -c powernap 0

chflags nohidden ~/Library/
killall Dock
killall SystemUIServer

