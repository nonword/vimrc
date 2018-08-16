# vimrc

This is my personal vim config. Includes a script to `setup` and a script to `restore`.

## Setup

To install `.vim` and `.vimrc` and fetch plugins:

```
git clone git@github.com:nonword/vimrc.git
./vimrc/setup.sh
```

Previous `.vim` and `.vimrc` will be backed up to vimrc/backup

## Restore

To restore whatever `.vim` and `.vimrc` existed prior to running `setup.sh` run this:

```
./vimrc/restore.sh
```
