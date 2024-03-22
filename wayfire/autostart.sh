#!/bin/sh

# IME
fcitx5 --replace -d &
# notification
# dunst &
# close laptop display
# wlr-randr --output eDP-1 --off
# Wallpaper
swaybg -i ~/Pictures/Wallpaper/wall.jpg &
# dpms idle
# ~/.config/wayfire/my-scripts/swayidle.sh &
# bar
~/.config/wayfire/bar-run.sh &
# nm-applet
nm-applet &
# Clipboard <cliphist>
wl-paste --watch cliphist store &
# Cursor theme
# $cursor='volantes_cursors'
# gsettings set org.gnome.desktop.interface cursor-theme ${cursor}
# Icon theme
# $icon='Papirus'
# gsettings set org.gnome.desktop.interface icon-theme ${icon}
# xdg-portal
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway
systemctl --user stop pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-wlr
systemctl --user start pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-wlr
