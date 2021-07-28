# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        echo "---" | tee -a /tmp/polybar_$m.log
        MONITOR=$m polybar top 2>&1 | tee -a /tmp/polybar_$m.log & disown
    done
else
    polybar --reload example &
fi

echo "Bars launched..."
