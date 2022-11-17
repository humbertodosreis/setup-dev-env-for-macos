# !/bin/bash

xcode-select --install
softwareupdate --install-rosetta --agree-to-license

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# update
brew update

# install via brew
brew bundle --file=./Brewfile

# asdf
chmod 0755 ./asdf/install.sh
./asd/install.sh

# oh-my-zsh
chmod 0755 ./zsh/install.sh
./zsh/install.sh

#echo '[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile' >> ~/.zprofile

echo 'alias cat='bat'' >> ~/.zprofile

sudo xattr -dr com.apple.quarantine /Applications/Podman\ Desktop.app
sudo xattr -dr com.apple.quarantine /Applications/Insomnia.app
sudo xattr -dr com.apple.quarantine /Applications/Beekeeper\ Studio.app
sudo xattr -dr com.apple.quarantine /Applications/RedisInsight.app
sudo xattr -dr com.apple.quarantine /Applications/MongoDB\ Compass.app
