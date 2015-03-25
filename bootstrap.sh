#!/bin/sh

# Install dotfiles
for symlink in zshrc env gitconfig vim vimrc
do
	rm ~/.$symlink
	ln -s $PWD/$symlink ~/.$symlink
done
