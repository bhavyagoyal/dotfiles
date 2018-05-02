# Use current Bash Aliases and create backup of old one
if [ -e ~/.bash_aliases ]; then mv ~/.bash_aliases ~/.bash_aliases_bak; fi
ln -s $PWD/.bash_aliases ~/.bash_aliases

# Use current .gitconfig and create backup of old one
if [ -e ~/.gitconfig ]; then mv ~/.gitconfig ~/.gitconfig_bak; fi
ln -s $PWD/.gitconfig ~/.gitconfig

# Use current .gitconfig and create backup of old one
if [ -e ~/.inputrc ]; then mv ~/.inputrc ~/.inputrc_bak; fi
ln -s $PWD/.inputrc ~/.inputrc

# Create backup of old .vimrc and .vim
if [ -e ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc_bak; fi
if [ -e ~/.vim ]; then mv ~/.vim ~/.vim_bak; fi

# Vundle Setup for Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $PWD/.vimrc ~/.vimrc
vim +PluginInstall +qall


