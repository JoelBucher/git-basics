#!/bin/bash

# Initialize repository
git init -b main

# Initial commit on main
echo "# Core Application" > README.md
git add README.md
git commit -m "initial: setup core application structure"

# Create a complex history by branching and committing concurrently

# 1. Start UI Feature
git checkout -b feature/login-ui
echo "div.login-box { color: blue; }" > ui-styles.css
git add ui-styles.css
git commit -m "feat(ui): add basic login box styling"

# 2. Go back to main and start API Feature
git checkout main
git checkout -b feature/api-endpoints
echo "def get_user(): return {'id': 1}" > api.py
git add api.py
git commit -m "feat(api): implement user fetch endpoint"

# 3. Add more to UI Feature
git checkout feature/login-ui
echo "button.submit { background: green; }" >> ui-styles.css
git add ui-styles.css
git commit -m "feat(ui): add submit button styling"

# 4. Start Docs Feature from the API branch
git checkout feature/api-endpoints
git checkout -b docs/api-guide
echo "# API Documentation" > API.md
git add API.md
git commit -m "docs: initialize API guide"

# 5. Add more to API Feature
git checkout feature/api-endpoints
echo "def get_status(): return 'OK'" >> api.py
git add api.py
git commit -m "feat(api): add health check endpoint"

# 6. Add final touch to Docs
git checkout docs/api-guide
echo "## Endpoints: /user, /status" >> API.md
git add API.md
git commit -m "docs: document user and status endpoints"

# Return to main so the user starts in the right place
git checkout main