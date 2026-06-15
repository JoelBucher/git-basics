#!/bin/bash

# 1. Stage the forgotten configuration file
git add config.json

# 2. Amend the last commit with the corrected message and the newly staged file
git commit --amend -m "fix: update connection manager configuration"

# 3. Verify the result
echo "--- Updated Last Commit Log ---"
git log -1 --stat