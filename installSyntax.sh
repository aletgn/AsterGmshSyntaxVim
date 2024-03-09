#!/bin/bash

# Source directory
source_dir="./"

# Destination directory
destination_dir="$HOME/.vim/"

# Check if source directory exists
if [ -d "$source_dir" ]; then
    # Check if destination directory exists, create it if not
    if [ ! -d "$destination_dir" ]; then
        mkdir -p "$destination_dir"
    fi

    # Use rsync to copy the contents of the source directory to the destination directory
    rsync -av --exclude=".git" --exclude="README.md" --exclude=".vimrc" --exclude="installSyntax.sh" "$source_dir"/ "$destination_dir"

    echo "Directory copied successfully."
else
    echo "Source directory does not exist."
fi

