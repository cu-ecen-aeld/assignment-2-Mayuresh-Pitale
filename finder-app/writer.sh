#!/bin/sh

# Check for required arguments
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

# Create directory path if it does not exist
writedir=$(dirname "$writefile")
if ! mkdir -p "$writedir"; then
    echo "Error: Could not create directory path $writedir"
    exit 1
fi

# Write string to file (overwrite if exists)
if ! echo "$writestr" > "$writefile"; then
    echo "Error: Could not create or write to file $writefile"
    exit 1
fi

exit 0
