#!/bin/bash

# 1. Untrack the .DS_Store file that was already committed 
# (using --cached keeps the file on your hard drive)
git rm --cached .DS_Store

echo ".DS_Store" > .gitignore
echo "**/.DS_Store" >> .gitignore
echo "*.log" >> .gitignore

git status

git add .gitignore .DS_Store

git commit -m "chore: add gitignore and untrack system clutter"