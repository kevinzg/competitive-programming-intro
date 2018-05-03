#!/usr/bin/env bash

if [[ $(git status -s) ]]
then
   echo "The working directory is dirty. Please commit any pending changes."
   exit 1;
fi

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo

commit=$(git log --format="%h" -n 1)

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages ($commit)"
