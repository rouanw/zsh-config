cat repos.sh
#!/bin/bash

# GitHub username or organization
github_user=$1

# File containing a list of repo names, one per line
repo_list_file=$2

# Directory where you want to store the repositories
base_dir="."

# Check if the base directory exists, create it if not
if [ ! -d "$base_dir" ]; then
  mkdir -p "$base_dir"
fi

# Read each repo name from the list file and clone if it doesn't exist locally
while IFS= read -r repo_name; do
  repo_dir="$base_dir/$repo_name"
  if [ ! -d "$repo_dir" ]; then
    # The local repository doesn't exist, clone it from GitHub using SSH
    git clone "git@github.com:$github_user/$repo_name.git" "$repo_dir"
    echo "Cloned $repo_name to $repo_dir"
  else
    # The local repository already exists, pull to update it
    (cd "$repo_dir" && git pull)
    echo "Pulled updates for $repo_name in $repo_dir"
  fi
done < "$repo_list_file"
