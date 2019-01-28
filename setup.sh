mkdir "$HOME/.config/mpd"
ln -sf "$(pwd)/mpd/mpd.conf" "$HOME/.config/mpd"
mkdir "$HOME/.config/mpv"
ln -sf "$(pwd)/mpv/mpv.conf" "$HOME/.config/mpv"
mkdir "$HOME/.config/rofi"
ln -sf "$(pwd)/rofi/config" "$HOME/.config/rofi"
mkdir "$HOME/.config/youtube-dl"
ln -sf "$(pwd)/youtube-dl/config" "$HOME/.config/rofi"
mkdir "$HOME/.config/zathura"
ln -sf "$(pwd)/zathura/zathurarc" "$HOME/.config/zathura/zathurarc"

mkdir "$HOME/.ncmpcpp"
ln -sf "$(pwd)/ncmpcpp/bindings" "$HOME/.ncmpcpp/"
ln -sf "$(pwd)/ncmpcpp/config" "$HOME/.ncmpcpp/"

mkdir "$HOME/.newsboat"
ln -sf "$(pwd)/newsboat/config" "$HOME/.newsboat/"
ln -sf "$(pwd)/newsboat/urls" "$HOME/.newsboat/"

mkdir "$HOME/.calcurse"
ln -sf "$(pwd)/calcurse/conf" "$HOME/.calcurse/"

#mkdir "$HOME/.config/qutebrowser"
#ln -sf "$(pwd)/youtube-dl/config" "$HOME/.config/rofi"
