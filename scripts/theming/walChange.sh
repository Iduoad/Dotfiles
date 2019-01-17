#!/bin/zsh


if [ $# -gt 0 ] && [ -f $1 ] ; then
    {
        wal -i $1 && cp $1 ~/.config/wall.png && echo -e "colors = $(cat ~/.cache/wal/colors.json)" > ~/.config/browser/colors.json && \
            zsh $HOME/.config/Scripts/zathcolors.sh > $HOME/.config/zathura/zathurarc
    }
else
    {
        [ -z $1 ] && wal --theme random ||  wal --theme random_light && echo -e "colors = $(cat ~/.cache/wal/colors.json)" > ~/.config/browser/colors.json && \
            zsh $HOME/.config/Scripts/zathcolors.sh > $HOME/.config/zathura/zathurarc
    }
fi
