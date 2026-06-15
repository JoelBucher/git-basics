#!/bin/bash

# Ensure we are on the main branch
git checkout main

# Merge the login UI feature
# (Using --no-edit to skip the interactive text editor for the merge commit message)
git merge feature/login-ui --no-edit

# Merge the API endpoints feature
git merge feature/api-endpoints --no-edit

# Merge the documentation feature
git merge docs/api-guide --no-edit

# View the final integrated history graph
git log --oneline --graph --all