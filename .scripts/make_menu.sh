#!/bin/bash

OUTPUT_FILE="README.md"

# Helper function to check if the last line in the output file is blank.
last_line_blank() {
    if [ -s "$OUTPUT_FILE" ]; then
        last_line=$(tail -n 1 "$OUTPUT_FILE")
        [ -z "$last_line" ] && return 0 || return 1
    else
        return 1
    fi
}

# Function to clean folder names by removing numeric prefixes (e.g., "0-", "1-").
clean_name() {
    echo "$1" | sed 's/^[0-9]*-//'
}

# Recursive function to generate the Markdown tree with indexed folder headers.
# Arguments:
#   $1: directory path
#   $2: header depth (number of '#' to use)
#   $3: current prefix (e.g., "1.2" for nested folders), empty for top level.
generate_tree() {
    local dir_path="$1"
    local depth="$2"
    local prefix="$3"
    local index=1  # Start numbering from 1
    local first_bullet=true

    # Process entries in sorted order.
    for entry in "$dir_path"/*; do
        local name=$(basename "$entry")
        local rel_path="${entry#./}"  # Remove leading "./" if present

        if [ -d "$entry" ]; then
            # Calculate the full index.
            if [ -z "$prefix" ]; then
                full_index="$index"
            else
                full_index="${prefix}.${index}"
            fi

            # Remove numeric prefix from folder names.
            local clean_folder_name=$(clean_name "$name")

            # Ensure exactly one blank line before printing a header.
            if [ -s "$OUTPUT_FILE" ] && ! last_line_blank; then
                echo "" >> "$OUTPUT_FILE"
            fi

            # Create the header line with indexed numbering.
            header_prefix=$(printf '#%.0s' $(seq 1 $depth))
            echo "${header_prefix} ${full_index}. ${clean_folder_name}" >> "$OUTPUT_FILE"
            echo "" >> "$OUTPUT_FILE"

            # Recurse into the subdirectory; new prefix is the current full index.
            generate_tree "$entry" $((depth + 1)) "$full_index"
            first_bullet=true  # Reset bullet flag after processing a directory.
            index=$((index + 1))
        elif [[ "$entry" == *.md ]]; then
            # For markdown files, add a blank line before the first bullet if needed.
            if [ "$first_bullet" = true ]; then
                if [ -s "$OUTPUT_FILE" ] && ! last_line_blank; then
                    echo "" >> "$OUTPUT_FILE"
                fi
                first_bullet=false
            fi
            # Remove .md extension for the link text.
            local name_no_ext="${name%.md}"
            echo "- [${name_no_ext}](./$rel_path)" >> "$OUTPUT_FILE"
        fi
    done
}

# Start the output file with the top-level header "docs".
echo "# docs" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Generate the tree for the "docs" folder, starting with header level 2 and an empty prefix.
generate_tree "docs" 2 ""

echo ">>>>> Complete generating the doc menu in $OUTPUT_FILE"
