#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

# Assign input parameters to variables
source_dir="$1"
destination_dir="$2"

# Check if the source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Source directory does not exist: $source_dir"
    exit 1
fi

# Create timestamp for the backup filename
timestamp=$(date +"%Y%m%d%H%M%S")

# Create backup filename with timestamp
backup_filename="backup_$timestamp.tar.gz"

# Create the destination directory if it doesn't exist
mkdir -p "$destination_dir"

# Create a compressed archive (.tar.gz) of the source directory
tar -czvf "$destination_dir/$backup_filename" -C "$source_dir" .

echo "Backup completed successfully: $destination_dir/$backup_filename"
