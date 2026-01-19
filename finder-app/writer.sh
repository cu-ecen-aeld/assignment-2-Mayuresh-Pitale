#!/bin/sh
#Author: Mayuresh Pitale
# Date: 2026-01-15
# Description: This script writes a given string to a specified file.
# reference: https://gemini.google.com/share/201ab3ee6a76

# Check for required arguments are 2 or not
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

# Create directory path if it doesn't exist
writedir=$(dirname "$writefile")
if ! mkdir -p "$writedir"; then
    echo "Error: Could not create directory path $writedir"
    exit 1
fi

# Write string to file
if ! printf "%s\n" "$writestr" > "$writefile"; then
    echo "Error: Could not create or write to file $writefile"
    exit 1
fi

exit 0
