# `@kyungw00k` does dotfiles, `@holman` style

## dotfiles

Your dotfiles are how you personalize your system. These are mine.

I was a little tired of having long alias files and everything strewn about (which is extremely common on other dotfiles projects, too). That led to this project being much more topic-centric. I realized I could split a lot of things up into the main areas I used (Ruby, git, system libraries, and so on), so I structured the project accordingly.

If you're interested in the philosophy behind why projects like these are awesome, you might want to [read holman's post on the subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](https://caskroom.github.io/) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.

## install

Run this:

```
git clone https://github.com/kyungw00k/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory. Everything is configured and tweaked within `~/.dotfiles` directory.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`, which sets up a few paths that'll be different on your particular machine.

*Note*:

If you want to run installation process from automated script like vagrant shell provisioner, without interactive shell you can pass arguments like:

```
git_authorname=rastasheep git_authoremail=rastasheep3@gmail.com existing_files=O make -C ~/.dotfiles linux
```

Available options are optional:

- `git_authorname` (string) - Your name used for doing git
- `git_authoremail` (string) - Your email used for doing git
- `existing_files` (string) - `[s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all` - Policy used for overriding existing files ``

## thanks ❤️

- [@holman's dotfiles (original author)](https://github.com/holman/dotfiles) 
- [@rastasheep's dotfiles](https://github.com/rastasheep/dotfiles)