#!/usr/bin/env bash

SDIR="$HOME/.config/polybar/scripts"

MODE="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
	-theme $SDIR/rofi/styles.rasi \
	<<<"light|dark|mixed|")"

# Launch Rofi
if [[ $MODE = "light" ]]; then
	MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
		-theme $SDIR/rofi/styles.rasi \
		<<<"♥ amber|♥ blue|♥ blue-gray|♥ brown|♥ cyan|♥ deep-orange|\
        ♥ deep-purple|♥ green|♥ gray|♥ indigo|♥ blue-light|♥ green-light|\
        ♥ lime|♥ orange|♥ pink|♥ purple|♥ red|♥ teal|♥ yellow|")"
	case "$MENU" in
	## Light Colors
	*amber) "$SDIR"/colors-light.sh --amber ;;
	*blue) "$SDIR"/colors-light.sh --blue ;;
	*blue-gray) "$SDIR"/colors-light.sh --blue-gray ;;
	*brown) "$SDIR"/colors-light.sh --brown ;;
	*cyan) "$SDIR"/colors-light.sh --cyan ;;
	*deep-orange) "$SDIR"/colors-light.sh --deep-orange ;;
	*deep-purple) "$SDIR"/colors-light.sh --deep-purple ;;
	*green) "$SDIR"/colors-light.sh --green ;;
	*gray) "$SDIR"/colors-light.sh --gray ;;
	*indigo) "$SDIR"/colors-light.sh --indigo ;;
	*blue-light) "$SDIR"/colors-light.sh --light-blue ;;
	*green-light) "$SDIR"/colors-light.sh --light-green ;;
	*lime) "$SDIR"/colors-light.sh --lime ;;
	*orange) "$SDIR"/colors-light.sh --orange ;;
	*pink) "$SDIR"/colors-light.sh --pink ;;
	*purple) "$SDIR"/colors-light.sh --purple ;;
	*red) "$SDIR"/colors-light.sh --red ;;
	*teal) "$SDIR"/colors-light.sh --teal ;;
	*yellow) "$SDIR"/colors-light.sh --yellow ;;
	esac
else
	MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
		-theme $SDIR/rofi/styles.rasi \
		<<<"♥ amber-dark|♥ blue-dark|♥ blue-gray-dark|♥ brown-dark|♥ cyan-dark|♥ deep-orange-dark|\
                ♥ deep-purple-dark|♥ green-dark|♥ gray-dark|♥ indigo-dark|♥ blue-light-dark|\
                ♥ green-light-dark|♥ lime-dark|♥ orange-dark|♥ pink-dark|♥ purple-dark|♥ red-dark|♥ teal-dark|♥ yellow-dark|")"
	case "$MENU" in
	## Dark Colors
	*amber-dark) "$SDIR"/colors-dark.sh --amber --"$MODE" ;;
	*blue-dark) "$SDIR"/colors-dark.sh --blue --"$MODE" ;;
	*blue-gray-dark) "$SDIR"/colors-dark.sh --blue-gray --"$MODE" ;;
	*brown-dark) "$SDIR"/colors-dark.sh --brown --"$MODE" ;;
	*cyan-dark) "$SDIR"/colors-dark.sh --cyan --"$MODE" ;;
	*deep-orange-dark) "$SDIR"/colors-dark.sh --deep-orange --"$MODE" ;;
	*deep-purple-dark) "$SDIR"/colors-dark.sh --deep-purple --"$MODE" ;;
	*green-dark) "$SDIR"/colors-dark.sh --green --"$MODE" ;;
	*gray-dark) "$SDIR"/colors-dark.sh --gray --"$MODE" ;;
	*indigo-dark) "$SDIR"/colors-dark.sh --indigo --"$MODE" ;;
	*blue-light-dark) "$SDIR"/colors-dark.sh --light-blue --"$MODE" ;;
	*green-light-dark) "$SDIR"/colors-dark.sh --light-green --"$MODE" ;;
	*lime-dark) "$SDIR"/colors-dark.sh --lime --"$MODE" ;;
	*orange-dark) "$SDIR"/colors-dark.sh --orange --"$MODE" ;;
	*pink-dark) "$SDIR"/colors-dark.sh --pink --"$MODE" ;;
	*purple-dark) "$SDIR"/colors-dark.sh --purple --"$MODE" ;;
	*red-dark) "$SDIR"/colors-dark.sh --red --"$MODE" ;;
	*teal-dark) "$SDIR"/colors-dark.sh --teal --"$MODE" ;;
	*yellow-dark) "$SDIR"/colors-dark.sh --yellow --"$MODE" ;;
	esac
fi
