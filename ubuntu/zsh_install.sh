# set banner
echo ' (figlet -f small "sydney" && motivate | catsay && echo "From Bao & Xu with love") | lolcat ' >> ~/.zshrc

#!/bin/zsh
echo 'alias nz="nano ~/.zshrc" ' >> ~/.zshrc
echo 'alias sz="source ~/.zshrc" ' >> ~/.zshrc


# install motivate
git clone https://github.com/mubaris/motivate.git
cd motivate/motivate
sudo ./install.sh
rm -rf motivate
source ~/.zshrc

# install aws cli
echo "Installing AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm awscliv2.zip
rm -rf aws
echo "AWS CLI was installed." && sleep 5 && clear

# install pyenv
echo "Installing pyenv..." && sleep 5
curl https://pyenv.run | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

source ~/.zshrc

pyenv install 3.12
pyenv virtualenv 3.12 dev-py3.12
echo 'pyenv activate dev-py3.12' >> ~/.zshrc
source ~/.zshrc

