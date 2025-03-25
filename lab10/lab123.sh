#!/bin/bash

# Function to list directory contents
list_directory_contents() {
    echo "Listing contents of the current directory:"
    ls -l
    echo ""
}

# Function to filter and sort directory contents based on a pattern
filter_and_sort_contents() {
    read -p "Enter a pattern to filter files (e.g., .txt for text files): " pattern
    echo "Filtering and sorting files with pattern '$pattern'..."
    ls -l | grep "$pattern" | sort
    echo ""
}

# Function to check for a specific file or folder
file_or_folder() {
    read -p "Enter the name of the file or folder to search for: " file
    echo "Searching for '$file'..."
    ls -l | grep "$file"
    echo ""
}

# Function to count files or folders based on a pattern
counting() {
    echo "Counting files or folders matching '$count_pattern'..."
    ls -l | grep "$count_pattern" | wc -l
    echo ""
}

# Main menu
echo "Piping Commands Manager"
echo "1. List contents of the current directory"
echo "2. Filter and sort directory contents"
echo "3. Search for a file or folder"
echo "4. Count files or folders matching a pattern"
echo "5. Exit"

# Loop for the menu
while true; do
    read -p "Select an option (1-5): " option
    case $option in
        1) list_directory_contents ;;
        2) filter_and_sort_contents ;;
        3) file_or_folder ;;
        4) counting ;;
        5) echo "Exiting the Piping Commands Manager. Goodbye!"
           exit 0 ;;
        *) echo "Invalid option. Please select a number between 1 and 5." ;;
    esac
    echo ""
done

