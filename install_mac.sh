#!/bin/sh

sudo su
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install npm
brew install curl
exit 0
