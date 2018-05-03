#!/usr/bin/env bash

if [[ $(git status -s) ]]
then
   echo "The working directory is dirty. Please commit any pending changes."
   exit 1;
fi

echo "Removing existing files"
rm -rf public/*

# Export some useful variables
export LAST_COMMIT=$(git log --format="%h" -n 1)
export LAST_UPDATED=$(TZ=UTC git log -local --date=format-local:"%Y-%m-%d %H:%M" --format="%ad" -n 1)
export REPO_URL="https://$(git config --get remote.origin.url | sed "s/\(^git@\|\.git$\)//g" | sed "s/:/\//")"

echo "Generating site"
hugo

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages ($LAST_COMMIT)"
