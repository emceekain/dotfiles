# ~/.zprofile

export VISUAL="vim"
export EDITOR="vim"
export PATH="$PATH:/home/brent/Development/Scripts"
export WALLPAPER=/usr/share/backgrounds/blue_fractal_wallpaper.png

# Some combination of the following lines ensure that QT/GTK applications look nice no matter the DE I chooose.
export QT_QPA_PLATFORMTHEME=qt5ct
# [ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK_RC_FILE=/home/brent/.gtkrc-2.0