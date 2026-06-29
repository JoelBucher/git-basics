#!/bin/bash

# Initialize repository and make initial commit
echo "print('App is running')" > dashboard.py
git add dashboard.py
git commit -m "initial commit"

# Create and switch to the feature branch
git checkout -b feature/analytics
echo "print('Analytics tracking initialized')" >> dashboard.py
git add dashboard.py
git commit -m "feat: add basic analytics tracking"

echo "print('Exporting report to CSV')" > report.py
git add report.py
git commit -m "feat: add CSV report exporter"

# Switch back to main and simulate a concurrent fix from a colleague
git checkout main
echo "print('SECURITY: Input sanitized')" >> dashboard.py
git add dashboard.py
git commit -m "fix: sanitize user input to prevent XSS"

# Leave the user on the feature branch to start the exercise
git checkout feature/analytics