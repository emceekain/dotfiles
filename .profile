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
#export WALLPAPER=/usr/share/backgrounds/archlinux/geowaves.png
#export WALLPAPER=/usr/share/wallpapers/MilkyWay/contents/images/5120x2880.png
#export WALLPAPER=/usr/share/wallpapers/IceCold/contents/images/5120x2880.png
export WIRELESS_ADAPTER="$(ip -o link | grep ether | awk -F': ' '{print $2}' | grep w)"
export TEMP_SENSOR="$(find /sys/devices/platform -name temp1_input)"
export WINIT_X11_SCALE_FACTOR=1.00

# Some combination of the following lines ensure that QT/GTK applications look nice no matter the DE I chooose.
export QT_QPA_PLATFORMTHEME=qt5ct
# [ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK_RC_FILE=/home/brent/.gtkrc-2.0
