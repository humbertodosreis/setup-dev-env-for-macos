# !/bin/bash

#install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# update
omz update

# copy my zsh settings
cp ./zsh/.zshrc ~/.zshrc
cp ./zsh/.zprofile ~/.zprofile
cp ./zsh/alias.sh $ZSH/custom/alias.sh

# install zsh theme

# Make it the default theme for Oh My ZSH from the terminal
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

echo 'source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
echo 'source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc

# install asdf plugin
git clone https://github.com/asdf-vm/asdf.git ~/.asdf


