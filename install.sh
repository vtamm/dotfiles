#!/bin/sh

echo "Installing Homebrew..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# Update Homebrew recipes
brew update

# Install homebrew-bundle
echo "Installing homebrew-bundle..."
brew tap homebrew/bundle

# Install all dependencies with bundle (see Brewfile)
echo "Installing formulae and casks from Brewfile..."
brew bundle

if test ! $(which lando); then
  # Install Lando
  curl -fsSL https://get.lando.dev/setup-lando.sh -o setup-lando.sh

  # make it executable
  chmod +x ./setup-lando.sh

  # get usage info
  bash setup-lando.sh --help

  # example advanced invocation
  # note you will need to change these values to ones that make sense for you
  # consult the usage and notes below for more into
  bash setup-lando.sh \
    --arch=arm64 \
    --no-setup \
    --os=macos \
    --debug \
    --yes
fi

# then run lando setup
lando setup --yes \
  --skip-common-plugins \
  --plugin @lando/wordpress \
  --plugin @lando/node \
  --plugin @lando/redis \
  --plugin @lando/laravel \
  --plugin @lando/mailhog