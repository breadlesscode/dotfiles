#!/bin/bash
# Small setup helper
function echoHeadline {
    echo '################'
    echo $1
    echo '################'
}
# Install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
source ~/.bashrc
brew update
# Install ZSH & Oh my ZSH
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# GIT SCM
brew install git
# Telegram Desktop 
brew cask install telegram-desktop
# WhatsApp Desktop 
brew cask install whatsapp
# Sublime Text
brew cask install sublime-text
# iTerm2
brew cask install iterm2
# Bitwarden Password Manager
brew cask install bitwarden
# Postman HTTP Client
brew cask install postman
# System Monitor App
brew cask install stats
# Install Lazy Software :)
brew install lazygit
brew install lazydocker
# Visual Studio Code
brew cask install visual-studio-code
# Install quick look extensions
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package quicklookase qlvideo
# PHP
zsh ./setup-php.sh
# PHP Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
#
# install AppStore manager
#
brew install mas
# install AppStore apps
mas install 1274495053 # Microsoft To Do
mas install 1399901452 # SleepSoon
mas install 1502839586 # HandMirror
mas install 441258766 # Magnet
mas install 1518036000 # Sequel Ace (MySql Client)

# Copy Dot files
rm -f ~/.zshrc
cp ./.zshrc ~/
cp ./.aliases ~/
rm -f ~/.gitignore
cp ./.gitignore ~/

# GIT Setup
zsh ./setup-git.sh

# Instal laravel/valet
composer global require laravel/valet
valet install