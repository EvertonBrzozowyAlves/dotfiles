# dotfiles

~ SWEET ~

## using the dotfiles

You can clone it your ~ directory on a new machine:
```bash
git clone https://github.com/EvertonBrzozowyAlves/dotfiles.git ~/.dotfiles
```

Symlink the files you want to configure, FROM the .dotfiles folder TO the expected file location: 
```bash
ln -s ~/.dotfiles/.bashrc ~/.bashrc
``` 

## Brew

You can user homebrew to install the software you need, reading from a previous saved file.  
The example below explains how to install homebrew and pass a dump file to install the packages.

```bash
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile
```

To generate a brew file, you can run the following command:
```bash
brew bundle dump --describe
```
