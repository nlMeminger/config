#!/bin/sh
case "$1" in
    laptop)
        xrandr --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --off
        ;;
    monitor)
        xrandr --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --mode 1600x900 --pos 1920x0 --rotate normal
        ;;
    tv)
        xrandr --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --mode 1920x1080 --pos 1920x0 --rotate normal
        ;;
    *)
        echo "Usage: $0 {laptop|monitor|tv}"
        exit 2
esac

exit 0

