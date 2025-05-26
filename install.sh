# Use current Bash Aliases and create backup of old one
if [ -e ~/.bash_aliases ]; then mv ~/.bash_aliases ~/.bash_aliases_bak; fi
ln -s $PWD/.bash_aliases ~/.bash_aliases

## Use current .gitconfig and create backup of old one
#if [ -e ~/.gitconfig ]; then mv ~/.gitconfig ~/.gitconfig_bak; fi
#ln -s $PWD/.gitconfig ~/.gitconfig

# Use current .inputrc and create backup of old one
if [ -e ~/.inputrc ]; then mv ~/.inputrc ~/.inputrc_bak; fi
ln -s $PWD/.inputrc ~/.inputrc

## Use current .ssh config and create backup of old one
#if [ -e ~/.ssh/config ]; then mv ~/.ssh/config ~/.ssh/config_bak; fi
#ln -s $PWD/.sshconfig ~/.ssh/config
#chmod 600 ~/.ssh/config

# Create backup of old .vimrc and .vim
if [ -e ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc_bak; fi
if [ -e ~/.vim ]; then mv ~/.vim ~/.vim_bak; fi

# Create backup of old .tmux.config
if [ -e ~/.tmux.conf ]; then mv ~/.tmux.conf ~/.tmux.conf_bak; fi
ln -s $PWD/.tmux.conf ~/.tmux.conf

# Vundle Setup for Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $PWD/.vimrc ~/.vimrc
mkdir ~/.vim/colors
wget -P ~/.vim/colors/ https://raw.githubusercontent.com/romainl/Apprentice/master/colors/apprentice.vim
wget -P ~/.vim/colors/ https://raw.githubusercontent.com/joshdick/onedark.vim/refs/heads/main/colors/onedark.vim
vim +PluginInstall +qall


