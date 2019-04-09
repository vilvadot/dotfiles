#!/usr/bin/env bash

#Install cask
cask_args appdir: '/Applications'
tap 'caskroom/cask'

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install last version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
# brew install wget --with-iri # don't work with this option
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install development dependences
brew install python
brew install node

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install z

# Install other useful binaries.
brew install git
brew install tree
brew install tmux

# GUI Apps
brew cask install firefox
brew cask install the-unarchiver
brew cask install spectacle
brew cask install flux
brew cask install docker
brew cask install insomnia

# Security
brew cask install private-internet-access
brew cask install little-snitch
brew cask install cleanmymac
brew cask install avast-security

# Entertainment
brew cask install vlc
brew cask install spotify
brew cask install calibre

# Downloads
brew cask install transmission
brew cask install jdownloader

# Communications
brew cask install slack
brew cask install mattermost

# Remove outdated versions from the cellar.
brew cleanup
