#!/bin/zsh
echo 'alias nz="nano ~/.zshrc" ' >> ~/.zshrc
echo 'alias sz="source ~/.zshrc" ' >> ~/.zshrc
source ~/.zshrc

# install pyenv
echo "Install pyenv..." && sleep 5
rm -rf /home/ubuntu/.pyenv
curl https://pyenv.run | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

sz
pyenv install 3.12
pyenv virtualenv 3.12 dev-py3.12
echo 'pyenv activate dev-py3.12' >> ~/.zshrc
sz

# install sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
echo "******** sdkman installed successfully ********"
sdk version

# install java
sdk install java 

# install scala
sdk install scala
sdk install sbt

# install spark
sdk install spark 3.5.0
