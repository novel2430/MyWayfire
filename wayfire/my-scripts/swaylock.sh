#!/usr/bin/bash
        # --image /home/novel2430/Downloads/Beautiful-Anime-Girl-Wallpaper.jpg \

indicator_radius=60
indicator_thickness=7
x_pos=$(( $indicator_radius + $indicator_thickness + 10 ))
y_pos=$(( $indicator_radius + $indicator_thickness + 10 ))
y_pos=$(( 1080 - $y_pos ))
b_color="6e7275"
f_color="e6eff0"

#killall swaylock
case $1 in
  manual)
    swaylock \
            --ignore-empty-password \
            --screenshots \
            --clock \
            --indicator \
            --indicator-radius $indicator_radius \
            --indicator-thickness $indicator_thickness \
            --indicator-x-position $x_pos \
            --indicator-y-position $y_pos \
            --effect-blur 7x5 \
            --effect-vignette 0.5:0.5 \
            --ring-color $b_color \
            --ring-ver-color $b_color \
            --ring-clear-color $b_color \
            --ring-wrong-color 880033 \
            --key-hl-color $f_color \
            --line-color 00000000 \
            --inside-color 00000088 \
            --inside-ver-color 00000088 \
            --inside-clear-color 00000088 \
            --inside-wrong-color 880033 \
            --text-color $f_color \
            --text-ver-color $f_color \
            --text-clear-color $f_color \
            --text-wrong-color $f_color \
            --separator-color 00000000
    ;;
  idle)
    swaylock \
            --ignore-empty-password \
            --image /home/novel2430/Pictures/Wallpaper/lock.jpg \
            --clock \
            --indicator \
            --indicator-radius $indicator_radius \
            --indicator-thickness $indicator_thickness \
            --indicator-x-position $x_pos \
            --indicator-y-position $y_pos \
            --effect-vignette 0.5:0.5 \
            --ring-color $b_color \
            --ring-ver-color $b_color \
            --ring-clear-color $b_color \
            --ring-wrong-color 880033 \
            --key-hl-color $f_color \
            --line-color 00000000 \
            --inside-color 00000088 \
            --inside-ver-color 00000088 \
            --inside-clear-color 00000088 \
            --inside-wrong-color 880033 \
            --text-color $f_color \
            --text-ver-color $f_color \
            --text-clear-color $f_color \
            --text-wrong-color $f_color \
            --separator-color 00000000
    ;;
esac
