# Use current Bash Aliases and create backup of old one
if [ -d "$HOME/.bash_aliases" ]; then
  mv $HOME/.bash_aliases $HOME/.bash_aliases-old
fi
ln -s $PWD/.bash_aliases $HOME/.bash_aliases
