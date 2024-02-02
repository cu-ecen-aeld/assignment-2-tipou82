#!/bin/bash

# Check if the number of arguments is less than 2
if [ $# -lt 2 ]; then
    echo "Error: Not enough arguments"
    echo "Usage: $0 writefile writestr"
    exit 1
fi

# Assign the arguments to variables
writefile=$1
writestr=$2

# Create the path to writefile if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write writestr to writefile
echo "$writestr" > "$writefile" || {
    echo "Error: Could not write to $writefile"
    exit 1
}