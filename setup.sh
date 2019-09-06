#!/usr/bin/env bash

#create folders which are not created by default
CONFIG_PATH="$HOME/.config"

PC_PACKAGES="i3 mpd mpv ncmpcpp newsboat rofi calcurse youtube-dl zathura browser"
SERVER_PACKAGES="zsh tmux vim ranger"

STOW_DIR=`dirname $0`

pushd $STOW_DIR > /dev/null

case $1 in
  pc)
    for package in $PC_PACKAGES; do
      stow -R $package &> /dev/null
    done
    ;;
  server)
    for package in $SERVER_PACKAGES; do
      stow -R $package &> /dev/null
    done
    ;;
  *)
    echo "Invalid group"
    ;;
esac

popd
