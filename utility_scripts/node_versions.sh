#!/bin/bash

# Print table headers
printf "%-20s %-20s\n" "Node version" "Repository"
echo "--------------------------------------------------"

# Search for .nvmrc files up to a depth of 1
find . -maxdepth 2 -type f -name '.nvmrc' | while read -r file; do
  dir=$(dirname "$file")
  contents=$(cat "$file")
  printf "%-20s %-20s\n" "$contents" "$dir"
done
