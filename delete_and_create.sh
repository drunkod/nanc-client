#!/bin/bash

# Check if a command line argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <app_name>"
    exit 1
fi

name_app="$1"

# Find and delete files excluding dot files, files in dot directories, and the script itself
find . -mindepth 1 ! -path '*/.*/*' ! -name '.*' ! -name "$(basename "$0")" -type f -delete

# Run flutter create
flutter create --project-name "$name_app" .