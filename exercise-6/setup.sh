#!/bin/bash

# Simulate initial production setup
echo "Initial codebase" > index.html
git add index.html
git commit -m "Initial commit"

# Create a stable history on main
for i in {1..4}
do
    echo "Stable update $i" >> index.html
    git commit -am "docs: update documentation part $i"
done

# Tag the last stable production release
git tag v1.0.0

# A developer forgot to switch branches and committed directly to main
echo "Feature alpha core" > feature_alpha.py
git add feature_alpha.py
git commit -m "feat: begin implementation of feature alpha"

echo "Feature alpha UI" >> feature_alpha.py
git commit -am "feat: add UI elements to feature alpha"

echo "Bugfix found during alpha testing" >> index.html
git commit -am "fix: typo in index.html"

echo "Feature alpha docs" >> feature_alpha.py
git commit -am "docs: complete feature alpha documentation"