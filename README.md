# System setup
1. Setup and use oh-my-zsh
```bash    
bash zsh_install.sh
```    

2. Install vim settings    
```bash.sh
git clone https://github.com/williamFalcon/vim.git
cd vim
bash install.sh 
```   
Open vim and type   
```:PluginInstall```
    
3. Let git use vim as default    
```bash    
git config --global core.editor "vim"    
```    


4. install dropbox   
```bash
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
```   
5. download python script to control dropbox   
```bash   
wget -O ~/bin/dropbox.py "https://www.dropbox.com/download?dl=packages/dropbox.py"
chmod +x ~/bin/dropbox.py
~/bin/dropbox.py help

```   

5. make /media public forever   
```bash
sudo chmod 777 /media
```

