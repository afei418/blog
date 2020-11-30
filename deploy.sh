#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying personal blog to GitHub...\033[0m\n"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$1" ]; then
	msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin main

printf "\033[0;32mDeploying base blog to GitHub...\033[0m\n"
# Go back to up dir
cd ../

msg="Blog content update $(date)"
if [ -n "$2" ]; then
    msg="$2"
fi
git add .
git commit -m "$msg"
git push origin master
