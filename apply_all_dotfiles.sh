#!/bin/bash
dotfiles_path="$HOME/dotfiles"
backup_path="$HOME/og_dotfiles"

dotfiles=(
    ".config/sway/config"

    ".config/nvim/init.lua"
    ".config/nvim/lua/config/lazy.lua"
    ".config/nvim/lua/plugins/blink.lua"
    ".config/nvim/lua/plugins/nvim_highlight_colors.lua"

    ".config/mako/config"

    ".config/foot/foot.ini"

    ".config/waybar/config"
    ".config/waybar/style.css"

    ".zshrc"

    ".local/bin/pi"
)
echo "creating backup for existing dotfiles at $backup_path"
mkdir -p "$backup_path"

for file in "${dotfiles[@]}"; do
    source_path="$dotfiles_path/$file"
    destination_path="$HOME/$file"
    # create folder for the dotifle to go into
    mkdir -p "$(dirname "$destination_path")"
    # if the file already exists, check if it's not already a link to the dotfiles
    if [ -e "$destination_path" ]; then
        if [ -L "$destination_path" ] && [ "$(readlink "$destination_path")" = "$source_path" ]; then
            echo "$destination_path is already symlinked"
        else
            mv "$destination_path" "$backup_path/"
            echo "$destination_path backed up to $backup_path/"
            ln -s "$source_path" "$destination_path"
            echo "$destination_path is now symlinked"
        fi
    else
        ln -s "$source_path" "$destination_path"
        echo "$destination_path is now symlinked"
    fi
done
echo "Dotfiles installed!"
