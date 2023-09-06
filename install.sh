#!/bin/bash

# ┌─────────────────────────────────────────────────────────────────────────────
# │ INSTALL VIM
# └─────────────────────────────────────────────────────────────────────────────

# Get the directory of the install.sh script
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Define the path to the user's home folder and the target .vimrc file
home_dir="$HOME"
vimrc_file="$home_dir/.vimrc"

# Path to your .vimrc file in the same directory as install.sh
source_vimrc="$script_dir/.vimrc"

# Check if the script directory is the same as the home directory
if [ "$script_dir" = "$home_dir" ]; then
    echo "Running PlugInstall..."
else
    # Path to your .vimrc file in the same directory as install.sh
    source_vimrc="$script_dir/.vimrc"

    # Check if .vimrc already exists
    if [ -e "$vimrc_file" ]; then
        read -p "You already have a .vimrc file in your Home folder. Do you wish to overwrite it? (y/n): " overwrite_response

        if [ "$overwrite_response" = "y" ] || [ "$overwrite_response" = "Y" ]; then
            # Overwrite the existing .vimrc file
            echo "Overwriting .vimrc..."
            cp "$source_vimrc" "$vimrc_file"
            echo "The .vimrc file has been overwritten."
        else
            echo "Skipping .vimrc installation."
        fi
    else
        # .vimrc doesn't exist, install it
        echo "Installing .vimrc..."
        cp "$source_vimrc" "$vimrc_file"
        echo "The .vimrc file has been installed."
        echo "Running PlugInstall..."
    fi
fi

# Change to Home directory
cd "$home_dir"

# Install Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Run PlugInstall
vim +'PlugInstall --sync' +qa

# Print success message
echo "Vim configured successfully!"
