#!/bin/bash

# Directory containing the scripts (modify as needed)
SCRIPT_DIR=$(realpath ".scripts")

# Check if the directory exists
if [ ! -d "$SCRIPT_DIR" ]; then
    echo "Error: Directory '$SCRIPT_DIR' does not exist."
    exit 1
fi

ROOT_DIR=$(basename $(realpath))
# Find and execute all .sh scripts in the directory
for script in "$SCRIPT_DIR"/*.sh; do
    # Check if there are any .sh files
    if [ -f "$script" ]; then
        SCRIPT_SHORTNAME="$ROOT_DIR/$(basename $SCRIPT_DIR)/$(basename $script)"
        echo ">>>> Running: $SCRIPT_SHORTNAME"
        bash "$script"
        echo ">>>> Complete $SCRIPT_SHORTNAME"
    fi
done
