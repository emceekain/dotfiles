# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top &
  done
else
  polybar --reload example &
fi
# Launch bar1 and bar2
#polybar bar1 &
#polybar bar2 &
#polybar top &
#polybar bottom &
#polybar top2 &
#polybar bottom2 &
echo "Bars launched..."
