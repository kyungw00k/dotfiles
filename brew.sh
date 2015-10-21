# from https://github.com/mathiasbynens/dotfiles/blob/master/Brewfile

# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --default-names

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen

# Tools for Github
brew install hub
brew install gist

# Install other useful binaries
brew install ack

brew install pow
mkdir -p ~/Library/Application\ Support/Pow/Hosts
ln -s ~/Library/Application\ Support/Pow/Hosts ~/.pow

brew install watch
brew install wget
brew install xz
brew install tree
brew install vim
brew install packer
brew install httpie

# Recording Terminal Session
# https://asciinema.org/
brew install asciinema

# Install Cask
brew install caskroom/cask/brew-cask

# In order to make your Casks install to sensible and predictable locations,
# recommend adding the following line
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install Casks
brew cask install alfred
brew cask install virtualbox
brew cask install vagrant
brew cask install iterm2
brew cask install google-chrome
brew cask install 1password
brew cask install things
brew cask install keepingyouawake
brew cask install charles
brew cask install the-unarchiver
brew cask install flux
brew cask install noizio
brew cask install noun-project

# Image Upload to imgur.com
brew cask install mac2imgur

# Track time in websites and applications
brew cask install rescuetime

# brew cask install genymotion

# Remove outdated versions from the cellar
brew cleanup
