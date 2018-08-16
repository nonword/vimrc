#!/bin/bash

SCRIPT_BASENAME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
BACKUP_FOLDER=$SCRIPT_BASENAME/backup

mkdir -p $SCRIPT_BASENAME/.vim/bundle

# Fetch plugins from github:
echo Cloning plugins
git clone https://github.com/VundleVim/Vundle.vim.git $SCRIPT_BASENAME/.vim/bundle/Vundle.vim
git clone https://github.com/scrooloose/syntastic.git $SCRIPT_BASENAME/.vim/bundle/syntastic -q
git clone https://github.com/tpope/vim-jdaddy.git $SCRIPT_BASENAME/.vim/bundle/vim-jdaddy
git clone https://github.com/elzr/vim-json.git $SCRIPT_BASENAME/.vim/bundle/vim-json
git clone https://github.com/plasticboy/vim-markdown.git $SCRIPT_BASENAME/.vim/bundle/vim-markdown
# These aren't working at writing
# git clone https://github.com/LucHermitte/lh-vim-lib.git $SCRIPT_BASENAME/.vim/bundle/lh-vim-lib
# git clone https://github.com/LucHermitte/local_vimrc.git $SCRIPT_BASENAME/.vim/bundle/local_vimrc

# If ~/.vimrc already exists (and isn't a symlink), back it up:
if [ -f "$HOME/.vimrc" ] && [ ! -L "$HOME/.vimrc" ]; then
  mkdir -p $BACKUP_FOLDER
  echo Backing up $HOME/.vimrc to $BACKUP_FOLDER/.vimrc
  mv $HOME/.vimrc $BACKUP_FOLDER/.vimrc
fi

# If ~/.vim already exists (and isn't a symlink), back it up:
if [ -d "$HOME/.vim" ] && [ ! -L "$HOME/.vim" ]; then
  mkdir -p $BACKUP_FOLDER
  echo Backing up $HOME/.vim to $BACKUP_FOLDER/.vim
  mv $HOME/.vim $BACKUP_FOLDER/
fi

# Link
echo Linking $SCRIPT_BASENAME/.vimrc to $HOME/.vimrc
ln -s $SCRIPT_BASENAME/.vimrc $HOME/.vimrc

echo Linking $SCRIPT_BASENAME/.vim to $HOME/.vim
ln -s $SCRIPT_BASENAME/.vim $HOME/.vim

echo Done
