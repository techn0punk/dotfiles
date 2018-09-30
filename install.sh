#!/usr/bin/env bash

REPO=$HOME/dotfiles
CONFDIR=$HOME/.config

log(){
  tee -a $REPO/install-log
}

date | log
echo "installing techn0punks Dotfiles on $HOST" | log

mkdir -p $CONFDIR
echo 'added .config Directory' | log

mkdir -p $HOME/bin
echo 'added userspace bin Directory' | log

mkdir -p $HOME/.ssh
echo 'added .ssh Directory' | log

cp -rvf $REPO/authorized_keys $HOME/.ssh/authorized_keys | log
cp -rvf $REPO/gitconfig $HOME/.gitconfig | log
mkdir -p $CONFDIR/neofetch
cp -rvf $REPO/neofetch.conf $CONFDIR/neofetch/config | log
cp -rvf $REPO/tmux.conf $HOME/.tmux.conf | log
cp -rvf $REPO/vimrc $HOME/.vimrc | log
cp -rvf $REPO/zshrc $HOME/.zshrc | log
cp -rvf $REPO/ranger $CONFDIR/ | log
cp -rvf $REPO/oh-my-zsh $CONFDIR/ | log

echo '' | log
echo 'done' | log
exit 0
