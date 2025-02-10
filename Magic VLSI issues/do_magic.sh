#!/bin/bash

# Find all matching paths
matching_paths=( $(find / -type f -path "*/sky130/sky130A/libs.tech/magic/sky130A.magicrc" 2>/dev/null) )

# Filter for paths that contain "/home"
home_paths=()
for path in "${matching_paths[@]}"; do
    if [[ "$path" == *"/home"* ]]; then
        home_paths+=("$path")
    fi
done

# Check if any valid paths were found
if [ ${#home_paths[@]} -eq 0 ]; then
    echo "Error: No valid location found in /home."
    exit 1
fi

# Use the first valid home path
selected_path="${home_paths[0]}"

# Copy the file to ~/.magicrc
cp "$selected_path" ~/.magicrc

# Run remaining commands
cd ~
magic -T SKY130A
