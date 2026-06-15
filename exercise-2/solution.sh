#!/bin/bash

# Check the damage
git status

# 1. Stage and commit the payment fix
git add payment.py
git commit -m "fix: resolve payment processing timeout"

# 2. Stage and commit the logger refactor
git add logger.py
git commit -m "refactor: clean up verbose debug logs"

# 3. Stage and commit the documentation updates
git add README.md
git commit -m "docs: update API endpoints documentation"

# 4. Verify the clean history
git log --oneline