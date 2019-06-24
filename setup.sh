# Collection of commands to execute to setup this, hopefully I'll find some time to create a more robust and elegant script.
CONFIG_FOLDER="$HOME/.config"
DOTFILES_FOLDER="$PWD"

echo "$CONFIG_FOLDER and $DOTFILES_FOLDER"

ln -sf "$DOTFILES_FOLDER/zsh/.zshrc $HOME"
ln -sf "$DOTFILES_FOLDER/zsh/aliases.zsh $HOME/.oh_my_zsh/custom"
ln -sf "$DOTFILES_FOLDER/zsh/functions.zsh $HOME/.oh_my_zsh/custom"

ln -sf "$DOTFILES_FOLDER/vim/.vimrc $HOME"

ln -sf "$DOTFILES_FOLDER/tmux/.tmux.conf" "$HOME"
mkdir "$HOME/.tmux"
ln -sf $DOTFILES_FOLDER/tmux/.tmux/{keys.tmux.conf,status.tmux.conf} "$HOME/.tmux"
ln -sf "$DOTFILES_FOLDER/tmux/.tmux/" "$HOME/.tmux"

mkdir $CONFIG_FOLDER/{rofi,mpd,zathura,ranger,mpv}
ln -sf "$DOTFILES_FOLDER/rofi/config" "$CONFIG_FOLDER/rofi"
ln -sf "$DOTFILES_FOLDER/mpv/mpv.conf" "$CONFIG_FOLDER/mpv"
ln -sf "$DOTFILES_FOLDER/mpd/mpd.conf" "$CONFIG_FOLDER/mpd"
ln -sf $DOTFILES_FOLDER/ranger/{rc.conf,rifle.conf} "$CONFIG_FOLDER/ranger"
ln -sf $HOME/.ncmpcpp/{config,bindings} "$HOME/.ncmpcpp"

mkdir -pv $CONFIG_FOLDER/i3blocks/blocks
ln -sf $DOTFILES_FOLDER/config $CONFIG_FOLDER/i3blocks
ln -sf $DOTFILES_FOLDER/blocks/* $CONFIG_FOLDER/i3blocks/blocks

ln -sf $DOTFILES_FOLDER/newsboat/* $HOME/.newsboat
ln -sf $DOTFILES_FOLDER/calcurse/* $HOME/.calcurse

ln -sf "$DOTFILES_FOLDER/youtube-dl" "$CONFIG_FOLDER/youtube-dl"
