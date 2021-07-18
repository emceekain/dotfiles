export VISUAL="nvim"
export EDITOR="nvim"
export TERMINAL="alacritty"
export PATH="$PATH:/home/brent/Development/Scripts:/home/brent/Development/rym-to-gmbrc/rym-to-sql"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
#export WALLPAPER=/usr/share/backgrounds/blue_fractal_wallpaper.png
#export WALLPAPER=/home/brent/Pictures/Wallpapers/HouseStark.jpg
#export WALLPAPER=/home/brent/Pictures/Wallpapers/dark_purple.jpg
export WALLPAPER=/usr/share/backgrounds/archlinux/wave.png

# Some combination of the following lines ensure that QT/GTK applications look nice no matter the DE I chooose.
export QT_QPA_PLATFORMTHEME=qt5ct
# [ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK_RC_FILE=/home/brent/.gtkrc-2.0
