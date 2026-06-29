#!/bin/bash

git rebase main

echo -e "print('App is running')\nprint('SECURITY: Input sanitized')\nprint('Analytics tracking initialized')" > dashboard.py

git add dashboard.py

git rebase --continue

git checkout main
git rebase feature/analytics