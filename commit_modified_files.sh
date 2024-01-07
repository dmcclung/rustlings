#!/bin/bash

# Get a list of all modified files
modified_files=$(git ls-files --modified)

# Loop through each modified file
for file in $modified_files
do
    # Add file to staging
    git add $file

    # Commit the file with a message
    git commit -m "Modified $file"
done

git push

