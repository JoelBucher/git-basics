#!/bin/bash

# 1. Check current status and branch
git status
git branch

# 2. Create and switch to the new feature branch 
git checkout -b feature/login-system

# 3. Stage the new file
git add auth.py

# 4. Commit the changes to the feature branch
git commit -m "feat: add core login logic"

# 5. Switch back to main to ensure it stayed clean
git checkout main
git status