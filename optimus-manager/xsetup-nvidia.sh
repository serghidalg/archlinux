#!/bin/sh

# Everything you write here will be executed by the display manager when setting up the login screen in "nvidia" mode.
# (but before optimus-manager sets up PRIME with xrandr commands).
xrandr --output HDMI-0 --mode 3440x1440 --rate 100 
xrandr --output eDP-1-1 --off
