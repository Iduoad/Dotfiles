# add scripts folder to PATH
export PATH="$PATH:$HOME/.config/scripts:$HOME/.gem/ruby/2.6.0/bin:$HOME/.local/bin"

# disable auto title (for tmuxp)
export DISABLE_AUTO_TITLE='true'

# add dictionaries path
export STARDICT_DATA_DIR="$HOME/.config/stardict/dic"

# default programs
export BROWSER='firefox'
export EDITOR='vim'
export FILE='vu'
export READER="zathura"
export TERMINAL='st'

mpd >/dev/null 2>&1 &

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
