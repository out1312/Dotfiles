#!/bin/bash

# Check if ImageMagick is installed
if ! command -v magick &> /dev/null; then
    echo "Error: ImageMagick (magick) is not installed."
    exit 1
fi

# Check if directory parameter is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Check if the directory exists
if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

# Process each first-level subdirectory
find "$1" -mindepth 1 -maxdepth 1 -type d | while read -r subdir; do
    echo "Processing directory: $subdir"
    
    # Process each image file in the subdirectory
    find "$subdir" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.tif" -o -iname "*.tiff" \) | while read -r img; do
        echo "Converting: $img"
        magick "$img" -resize 128x128! "$img"
    done
done

echo "All images in first-level subdirectories have been converted to 128x128 pixels."
