#!/bin/sh

# Check for required arguments
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required."
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

filesdir="$1"
searchstr="$2"

# Check if filesdir is a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory."
    exit 1
fi

# Count number of files (including subdirectories)
num_files=$(find "$filesdir" -type f | wc -l)

# Count number of matching lines
num_matching_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

# Print result
echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"

exit 0