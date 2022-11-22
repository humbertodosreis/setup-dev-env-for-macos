# !/bin/bash

asdf plugin add direnv
asdf direnv setup --shel zsh --version latest

asdf plugin add java
asdf install java adoptopenjdk-19.0.0+36
asdf global java adoptopenjdk-19.0.0+36
# . ~/.asdf/plugins/java/set-java-home.bash
# . ~/.asdf/plugins/java/set-java-home.zsh

asdf plugin add kotlin
asdf install kotlin latest
asdf global kotlin latest

asdf plugin add maven
asdf install maven 3.8.1

asdf plugin add python
asdf install python 3.11.0
asdf plugin add poetry
adsf install poetry 1.2.2

asdf plugin add terraform
asdf install terraform 1.3.5
asdf global terraform 1.3.5

mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry

cp .asdfrc $(echo HOME)/.asdfrc

asdf reshim

#echo '. ~/.asdf/plugins/java/set-java-home.bash' >> $(echo $HOME)/.zprofile
echo '. $HOME/.asdf/plugins/java/set-java-home.zsh' >> $HOME/.zprofile
