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
# now click on that connect computer link
```   
5. download python script to control dropbox   
```bash   
mkdir bin
wget -O ~/bin/dropbox.py "https://www.dropbox.com/download?dl=packages/dropbox.py"
chmod +x ~/bin/dropbox.py
~/bin/dropbox.py help

```   

6. make /media public forever   
```bash
sudo chmod 777 /media
```   

7. Enable ssh    
```bash    
sudo apt-get install openssh-server    
sudo service ssh status
```   
8. Change ssh port   
```bash    
sudo vim /etc/ssh/sshd_config   
# change Port to whatever you want   
```    

9. Copy ssh keys to enable no password ssh (from external machine)      
```bash   
ssh-copy-id -i ~/.ssh/id_rsa.pub will@68.174.68.101 -p 9450
```    

10. Disable ssh and enable pem file login only    
```bash    
sudo vim /etc/ssh/sshd_config   

# change these lines
PasswordAuthentication no
ChallengeResponseAuthentication no
```   

11. Add conda and dropbox lines to zshrc    
```bash    
echo 'alias dropbox="~/bin/dropbox.py"' >> ~/.zshrc
echo '# added by Miniconda3 installer' >> ~/.zshrc
echo 'export PATH="/home/will/miniconda3/bin:$PATH"'  >> ~/.zshrc    
source ~/.zshrc
```    

12. Enable oh my zsh vim mode (copy this to ~/.zshrc)   
```bash   
bindkey -v

# Vi mode
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
	autoload -U up-line-or-beginning-search
	zle -N up-line-or-beginning-search
	bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
	autoload -U down-line-or-beginning-search
	zle -N down-line-or-beginning-search
	bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi
```
