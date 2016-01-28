#!/bin/sh

# The Iron Yard - Nashville - FEE Spring 2016
# Super Install Script
#
# Heavily borrowing on the shoulders of giants
# MIT or similar license probably applies
# Thanks to Jacob Smith from the GVL campus of The Iron Yard

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

$PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

# Install Git, Trash and io.js
clis=(
  hub
  git
  trash
  node
)
brew install ${clis[@]}

brew cleanup

# Install brew cask
brew install caskroom/cask/brew-cask

brew tap caskroom/versions

# Apps
apps=(
  alfred
  google-chrome
  atom
  slack
  iterm2
  screenhero

  flux
  quicklook-json
  spectacle

  #dash
  #mou
  #github
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

echo "Setting Git to use Sublime Text as default editor"
git config --global core.editor "atom -n -w"
