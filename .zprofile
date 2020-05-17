# ~/.zprofile

export VISUAL="nvim"
export EDITOR="nvim"
export PATH="$PATH:/home/brent/Development/Scripts:/home/brent/Development/rym-to-gmbrc/rym-to-sql"
#export WALLPAPER=/usr/share/backgrounds/blue_fractal_wallpaper.png
#export WALLPAPER=/home/brent/Pictures/Wallpapers/HouseStark.jpg
export WALLPAPER=/home/brent/Pictures/Wallpapers/dark_purple.jpg

# Some combination of the following lines ensure that QT/GTK applications look nice no matter the DE I chooose.
export QT_QPA_PLATFORMTHEME=qt5ct
# [ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK_RC_FILE=/home/brent/.gtkrc-2.0

# Per DE application associations.
if [ "$XDG_DESKTOP_SESSION" = 'i3' ]
then
    xdg-mime default org.pwmt.zathura.desktop application/pdf 
elif [ "$XDG_DESKTOP_SESSION" = 'plasma' ]
then
    xdg-mime default org.kde.okular.desktop application/pdf
fi
