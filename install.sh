#!/bin/sh

echo "Installing Homebrew..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install homebrew-bundle
echo "Installing homebrew-bundle..."
brew tap homebrew/bundle

# Install all dependencies with bundle (see Brewfile)
echo "Installing formulae and casks from Brewfile..."
brew bundle
