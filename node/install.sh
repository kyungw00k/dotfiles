if test ! $(which node)
then
  # Install Node.js Binary
  nvm install node
fi

# Install global NPM packages
npm install --global yarn
