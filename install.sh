# upgrade vim so youcomplete me works

sudo apt-get remove vim-tiny
sudo add-apt-repository ppa:pkg-vim/vim-daily
sudo apt-get update
sudo apt-get install vim
sudo apt-get install vim-nox

# move .vim to home dir
cd ..
mv vim ~/.vim
cd .vim

# copy Vundle 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy vimrc
mv .vimrc ~/.vimrc

# ----------------------
# INSTALL YOU COMPLETE ME (YCM) VIM AUTOCOMPLETE
# ----------------------
# Install YCM (instructions: https://github.com/Valloric/YouCompleteMe/blob/master/README.md#ubuntu-linux-x64)
# Install development tools and CMake:
sudo apt-get install build-essential cmake

# Make sure you have Python headers installed:
sudo apt-get install python-dev python3-dev

# Compiling YCM with semantic support for C-family languages:
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer


echo 'now open vim and run :PluginInstall'   
