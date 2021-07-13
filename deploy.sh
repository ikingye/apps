#!/bin/sh

set -x
printf "\033[0;32m app Deploying updates to GitHub...\033[0m\n"
cd $(dirname "$0")

# Commit changes.
msg="rebuilding site $(date)"

# update the theme
git submodule update --remote
# remove old files
rm -rf public/*
# Build the project.
hugo

# Go To Public folder
cd public
# Add changes to git.
git add .
git commit -m "$msg"
# Push to blog repo and trigger building blog.
git push origin master

# push to source repo
cd ..
git add .
git commit -m "$msg"
git push origin master
