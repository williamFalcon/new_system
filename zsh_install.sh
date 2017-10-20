# install zsh prereq
apt-get install zsh
apt-get install git-core

# Install oh my zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`
