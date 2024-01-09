# set banner
echo ' (figlet -f small "sydney" && motivate | catsay && echo "From Bao & Xu with love") | lolcat ' >> ~/.zshrc

#!/bin/zsh
echo 'alias nz="nano ~/.zshrc" ' >> ~/.zshrc
echo 'alias sz="source ~/.zshrc" ' >> ~/.zshrc
source ~/.zshrc

# install motivate
git clone https://github.com/mubaris/motivate.git
cd motivate/motivate
sudo ./install.sh
sz

# install aws cli
echo "Installing AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm awscliv2.zip
echo "AWS CLI was installed." && sleep 5 && clear

# install pyenv
echo "Installing pyenv..." && sleep 5
rm -rf /home/ubuntu/.pyenv
curl https://pyenv.run | zsh

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

sz
pyenv install 3.12
pyenv virtualenv 3.12 dev-py3.12
echo 'pyenv activate dev-py3.12' >> ~/.zshrc
sz


# install sdkman
curl -s "https://get.sdkman.io" | zsh
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

