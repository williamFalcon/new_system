# upgrade vim so youcomplete me works

sudo apt-get remove vim-tiny
sudo add-apt-repository ppa:pkg-vim/vim-daily
sudo apt-get update
sudo apt-get install vim
sudo apt-get install vim-nox

# move .vim to home dir
cd ..
mv vim ~/.vim
cd vim

# copy vimrc
mv .vimrc ~/.vimrc
