#!/usr/bin/env bash

if [[ $(git status -s) ]]
then
   echo "The working directory is dirty. Please commit any pending changes."
   exit 1;
fi

echo "Cloning theme submodule"
git submodule init
git submodule update

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

echo "Run \`hugo server -D\` to start the webserver"
