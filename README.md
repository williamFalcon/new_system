# System setup
1. Install vim settings    
```bash.sh
git clone https://github.com/williamFalcon/vim.git
cd vim
bash install.sh 
```
    
2. Let git use vim as default    
```bash    
git config --global core.editor "vim"    
```    

3. install dropbox   
```bash
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
```
