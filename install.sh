#!/bin/zsh

echo "installing developer tools... 🚀"
xcode-select --install

echo "installing homebrew... 🍺"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask

echo "install GUIs via homebrew... 💻"
brew cask install atom

brew cask install sublime-text

brew cask install slack

brew cask install google-chrome

brew cask install macdown

echo "installing node stuff and yarn version manager... 🧶"
brew install nvm
echo "......^^^^^^^^ set up path, do this ^^^^^^ .........."
curl -s https://raw.githubusercontent.com/tophat/yvm/master/scripts/install.js | node # yarn version manager


echo "subl command line tool... 💎"
sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl


echo "setting github configs... 🐙"
git config --global user.name "alexdanilowicz"
git config --global user.email "alex.danilowicz@gmail.com"
echo "...... set up github ssh below .........."
echo "https://stackoverflow.com/questions/2643502/how-to-solve-permission-denied-publickey-error-when-using-git"
echo "......^^^^^^^^ do this ^^^^^^ .........."

brew tap heroku/brew && brew install heroku
heroku autocomplete
curl -sL https://firebase.tools | bash
firebase login

echo
echo "Also: download VSCODE and 'shell command' in VSCODE"
echo
echo "also set up your .zshrc "

### RUBY STUFF
# echo "install ruby stuff... "
# echo "If failure, trying running this command which might be required for renbv install..."
# brew install openssl libyaml libffiq
# brew install rbenv
# rbenv init
####
# echo "Add to zsh Profile"
########
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
# eval "$(rbenv init -)"
# rbenv global 2.7.0
