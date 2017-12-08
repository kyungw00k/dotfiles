if test ! $(which nvm)
then
  brew install nvm
fi

if test ! $(which node)
then
  nvm install stable && nvm use stable
fi

# Install global NPM packages
npm install --global yarn
