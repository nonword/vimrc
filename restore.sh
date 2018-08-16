#!/bin/bash

SCRIPT_BASENAME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
BACKUP_FOLDER=$SCRIPT_BASENAME/backup

# If ~/.vimrc isn't a symlink, fail restore:
if [ ! -L "$HOME/.vimrc" ]; then
  echo "Error. $HOME/.vimrc isn't a symlink."
  exit
fi

# If ~/.vim isn't a symlink, fail restore:
if [ ! -L "$HOME/.vim" ]; then
  echo "Error. $HOME/.vim isn't a symlink."
  exit
fi

# Remove .vim symlink
rm $HOME/.vim

echo Restoring .vim and .vimrc
mv $BACKUP_FOLDER/.vim $HOME/.vim
mv $BACKUP_FOLDER/.vimrc $HOME/.

