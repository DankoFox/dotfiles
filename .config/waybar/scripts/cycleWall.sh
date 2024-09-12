#!/usr/bin/fish

set wallpaper_dir ~/.config/hypr/wallpapers

# Check if the wallpaper directory exists and is not empty
if test -d $wallpaper_dir; and not test -z (ls $wallpaper_dir)
    set wallpapers (ls $wallpaper_dir/*)

    set random_wallpaper (random choice $wallpapers)

    swww img $random_wallpaper --transition-type any --transition-duration 1 --transition-fps 60
else
    echo "The wallpaper directory does not exist or is empty."
end
