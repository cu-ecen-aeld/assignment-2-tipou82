#!/bin/bash

# Check if the number of arguments is less than 2
if [ $# -lt 2 ]; then
    echo "Error: Not enough arguments"
    echo "Usage: $0 filesdir searchstr"
    exit 1
fi

# Assign the arguments to variables
filesdir=$1
searchstr=$2

# Check if filesdir is not a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory"
    exit 1
fi

# Count the number of files in the directory and subdirectories
num_files=$(find "$filesdir" -type f | wc -l)

# Count the number of lines that contain searchstr
num_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print the message
echo "The number of files are $num_files and the number of matching lines are $num_lines"