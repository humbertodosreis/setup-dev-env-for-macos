# !/bin/bash

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

cp .asdfrc $(echo HOME)/.asdfrc

asdf reshim

#echo '. ~/.asdf/plugins/java/set-java-home.bash' >> $(echo $HOME)/.zprofile
echo '. $HOME/.asdf/plugins/java/set-java-home.zsh' >> $HOME/.zprofile
