#!/bin/bash

git branch feature-alpha

git reset --hard v1.0.0

TYPO_SHA=$(git log feature-alpha --grep="fix: typo in index.html" --format="%H")
git cherry-pick $TYPO_SHA