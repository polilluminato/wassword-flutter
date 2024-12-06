#!/bin/bash

# Directory containing the script and CSV file
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CSV_FILE="$DIR/translations.csv"

# Check if CSV file exists
if [ ! -f "$CSV_FILE" ]; then
    echo "Error: translations.csv not found in $DIR"
    exit 1
fi

# Read the header line to get languages
IFS=',' read -r -a languages < "$CSV_FILE"

# Create a temporary file for each language
for ((i=1; i<${#languages[@]}; i++)); do
    lang=$(echo "${languages[$i]}" | tr -d '"' | tr -d '[:space:]\r')
    output_file="$DIR/app_${lang}.arb"
    echo "{" > "$output_file"
done

# Process each line of the CSV file (skipping the header)
tail -n +2 "$CSV_FILE" | while IFS=',' read -r -a fields || [ -n "$fields" ]; do
    # Get the key (first column)
    key=$(echo "${fields[0]}" | tr -d '"' | tr -d '[:space:]\r')
    
    # Skip empty lines
    if [ -z "$key" ]; then
        continue
    fi

    # For each language
    for ((i=1; i<${#languages[@]}; i++)); do
        lang=$(echo "${languages[$i]}" | tr -d '"' | tr -d '[:space:]\r')
        value=$(echo "${fields[$i]}" | tr -d '"' | tr -d '\r')
        output_file="$DIR/app_${lang}.arb"

        # Handle special keys
        if [ "$key" = "@@locale" ]; then
            echo "   \"@@locale\": \"$value\"," >> "$output_file"
        elif [ "$key" = "@@author" ]; then
            echo "   \"@@author\": \"$value\"," >> "$output_file"
        elif [ "$key" != "-" ]; then
            echo "   \"$key\": \"$value\"," >> "$output_file"
        fi
    done
done

# Finalize each file
for ((i=1; i<${#languages[@]}; i++)); do
    lang=$(echo "${languages[$i]}" | tr -d '"' | tr -d '[:space:]\r')
    output_file="$DIR/app_${lang}.arb"
    # Remove the last comma
    sed -i '$ s/,$//' "$output_file"
    # Add closing brace without newline
    echo -n "}" >> "$output_file"
done

echo "Translation files generated successfully in $DIR!"
