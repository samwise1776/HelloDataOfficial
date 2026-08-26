#!/usr/bin/env bash

set -e

cd "$(dirname "$0")"

echo "=================================="
echo " Updating HelloData"
echo "=================================="

git add .

if git diff --cached --quiet; then
    echo "No changes detected."
    exit 0
fi

read -r -p "Commit message: " message

if [ -z "$message" ]; then
    message="Update HelloData"
fi

git commit -m "$message"

git push origin main

echo
echo "=================================="
echo " HelloData updated successfully!"
echo "=================================="
echo
echo "Repository:"
echo "https://github.com/samwise1776/HelloDataOfficial"
echo
echo "Website:"
echo "https://samwise1776.github.io/HelloDataOfficial/"