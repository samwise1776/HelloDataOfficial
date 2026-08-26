#!/usr/bin/env bash

set -e

cd /home/ray/Apps/App2

echo "===================================="
echo "      HelloData Updater"
echo "===================================="

echo "Checking for changes..."

git add -A

if git diff --cached --quiet; then
    echo "No changes found."
    exit 0
fi

read -r -p "Commit message: " message

if [ -z "$message" ]; then
    message="Update HelloData"
fi

echo "Creating commit..."
git commit -m "$message"

echo "Pushing to GitHub..."
git push origin main

echo
echo "===================================="
echo "Update complete!"
echo "===================================="
echo "Repo:"
echo "https://github.com/samwise1776/HelloDataOfficial"
echo
echo "Website:"
echo "https://samwise1776.github.io/HelloDataOfficial/"