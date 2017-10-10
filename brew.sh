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

# Remove outdated versions from the cellar
brew cleanup
