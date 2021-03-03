# add scripts folder to PATH
export PATH="$PATH:$HOME/.gem/ruby/2.6.0/bin:$HOME/.local/bin"

# XDG defaults
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config/"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

# disable auto title (for tmuxp)
export DISABLE_AUTO_TITLE='true'

# set gnupg home
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

# get rid of gem dir in $HOME
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem

# set Xauthority home
# export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

# avoid aspell files in $HOME
export ASPELL_CONF="per-conf $XDG_CONFIG_HOME/aspell/aspell.conf; personal $XDG_CONFIG_HOME/aspell/en.pws; repl $XDG_CONFIG_HOME/aspell/en.prepl"

# set vscode home
export VSCODE_EXTENSIONS="${XDG_DATA_HOME:-~/.local/share}/vscode-oss/extensions"

# set vagrant home
export VAGRANT_HOME="$XDG_DATA_HOME"/vagrant
export VAGRANT_ALIAS_FILE="$XDG_DATA_HOME"/vagrant/aliases

# set aws home
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME"/aws/credentials
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME"/aws/config
# set wget home
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

# avoid error.log in ~/.ncmpcpp
export ncmpcpp_directory='$HOME/.config/ncmpcpp'

# add dictionaries path
export STARDICT_DATA_DIR="$XDG_DATA_HOME/stardict"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

# RTV
export RTV_BROWSER='urlportal'

# default programs
export BROWSER='firefox'
export EDITOR='nvim'
export FILE='vu'
export READER="zathura"
export TERMINAL='st'

# Start graphical server on tty1 if not already running.

eval `keychain --eval --agents ssh id_rsa`
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
