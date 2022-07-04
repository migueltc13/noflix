#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install npm
brew install curl
brew install --cask vlc
npm install -g peerflix
exit 0
