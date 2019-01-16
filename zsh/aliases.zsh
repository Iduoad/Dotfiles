#!/usr/bin/env zsh

### Generic programs shortcuts: ###
alias a="calcurse -a -t"
alias email="thunderbird -ProfileManager"
alias nf="clear && neofetch"

### command-improved ###
alias mkdir="mkdir -pv"
alias du='du -kh'
alias df='df -kTh'
alias cal='cal -3m'
alias date='date "+%A, %B %d, %Y [%T]"'
alias walrand='wal --theme random && echo -e "colors = $(cat ~/.cache/wal/colors.json)" > ~/.config/browser/colors.json'
alias walrandl='wal --theme random_light && echo -e "colors = $(cat ~/.cache/wal/colors.json)" > ~/.config/browser/colors.json'

#Privilege
alias p="sudo pacman"
alias scat="sudo cat"
alias svim="sudo vim"
alias srm="sudo rm"

### My aliases ###
 #youtube-dl
alias mp3='youtube-dl -ic -x --audio-format=mp3'
alias ytlow='youtube-dl -ic -f 17'
alias yt='youtube-dl -ic -f 18'
alias ythigh='youtube-dl -ic'
  #python server
alias py2serv="python -m SimpleHTTPServer"
alias py3serv="python3 -m http.server"
alias pyserv="py3serv"
  #git
alias git-lastmerge="git whatchanged -2 --oneline -p"
alias git-last="git whatchanged -1 --oneline -p"

alias ga="git add"
alias gap="git add --patch"

alias gc="git commit"
alias gca="git commit -a"
alias gcm="git commit -m"
alias gcam="git commit -am"

alias gs="git status"
alias gd="git diff"
alias gdw="git diff --color-words"

# System info aliases
alias battery="upower -i $(upower -e | grep 'BAT') | grep -E \"state|to\ full|percentage\""

# resuable format strings
GIT_PRETTY_FORMAT="--pretty=\"%C(bold green)%h%Creset%C(auto)%d%Creset %s\""
GIT_PRETTY_FORMAT_AUTHOR="--pretty=\"%C(bold green)%h%Creset %C(yellow)%an%Creset%C(auto)%d%Creset %s\""

# pretty Git log
alias gl="git log --graph $GIT_PRETTY_FORMAT"
# pretty Git log, all references
alias gll='gl --all'
# pretty Git log, show authors
alias gla="git log --graph $GIT_PRETTY_FORMAT_AUTHOR"
# pretty Git log, all references, show authors
alias glla='gla --all'
