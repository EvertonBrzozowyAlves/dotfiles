# dotfiles

~ SWEET ~

## using the dotfiles

You can clone it your ~ directory on a new machine:
```bash
git clone https://github.com/EvertonBrzozowyAlves/dotfiles.git ~/.dotfiles
```

Symlink the files you want to configure:
```bash
ln -s ~/.dotfiles/.bashrc ~/.bashrc
``` 

## Brew
```bash
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle

```
