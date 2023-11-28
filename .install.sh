#!/bin/zsh

# Source: https://github.com/FelixKratz/dotfiles/blob/master/.install.sh

# Homebrew
## Install
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

## Taps
echo "Tapping Brew..."
brew tap homebrew/cask-fonts
brew tap koekeishiya/formulae

## Formulae
echo "Installing Brew Formulae..."
### Essentials
brew install wget
brew install jq
brew install ripgrep
brew install skhd

### Terminal
brew install neovim
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

### Nice to have
brew install lazygit

## Casks
echo "Installing Brew Casks..."
### Terminals & Browsers

### Nice to have
brew install --cask alfred

### Fonts
brew install --cask sf-symbols
brew install --cask font-hack-nerd-font
brew install --cask font-jetbrains-mono
brew install --cask font-fira-code

# Mac App Store Apps
echo "Installing Mac App Store Apps..."
mas install 1480933944 #Vimari
