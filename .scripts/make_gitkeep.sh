#!/bin/bash

# Function to process directories recursively
process_directory() {
    local dir_path="$1"

    # Count the number of subdirectories (excluding hidden ones)
    local subdirs_count=$(find "$dir_path" -mindepth 1 -maxdepth 1 -type d ! -name ".*" | wc -l)
    # Count the number of files (excluding .gitkeep)
    local files_count=$(find "$dir_path" -mindepth 1 -maxdepth 1 -type f ! -name ".gitkeep" | wc -l)
    # Check if .gitkeep exists
    local gitkeep_path="$dir_path/.gitkeep"
    local has_gitkeep=false
    [ -f "$gitkeep_path" ] && has_gitkeep=true

    if [[ "$files_count" -eq 0 && "$subdirs_count" -le 1 ]]; then
        # Needs a .gitkeep
        if [ "$has_gitkeep" = false ]; then
            touch "$gitkeep_path"
            echo ">>>>> Added .gitkeep to $dir_path"
        fi
    else
        # Should remove .gitkeep
        if [ "$has_gitkeep" = true ]; then
            rm "$gitkeep_path"
            echo ">>>>> Removed .gitkeep from $dir_path"
        fi
    fi

    # Recur for subdirectories
    for subdir in "$dir_path"/*/; do
        [ -d "$subdir" ] && process_directory "$subdir"
    done
}

# Start processing from the docs folder
process_directory "docs"

echo ">>>>> Complete adding and removing .gitkeep files."
