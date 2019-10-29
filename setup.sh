#!/usr/bin/env bash

STOW_DIR="$HOME/dotfiles"
TARGET_DIR="$HOME"

stow -vv --no */ -d $STOW_DIR -t $TARGET_DIR
