#!/bin/bash

git diff

git add -p auth.py

# Use "s" to split the initial hunk
# Use "y" to commit the first hunk
# Use "n" twice to ignore the last two hunks

git diff --staged

git commit -m "fix: correct user authentication logic"

git diff