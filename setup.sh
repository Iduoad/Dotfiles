#!/usr/bin/env bash

setup_sdcv() {

    DICTS="$1"
    EXTRACT_FOLDER="$STARDICT_DATA_DIR/dic"

    mkdir -pv "${EXTRACT_FOLDER}"
    wget -P $EXTRACT_FOLDER "${1}"

    for dic in $(ls $EXTRACT_FOLDER); do
        tar -xf $dic
    done

    rm "$EXTRACT_FOLDER/*.bz"
}

MAC_PACKAGES="emacs main node ruby tmux vim zsh"
SERVER_PACKAGES="bash main screen tmux vim"

STOW_DIR=`dirname $0`

pushd $STOW_DIR > /dev/null

case $1 in
  mac)
    for package in $MAC_PACKAGES; do
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
