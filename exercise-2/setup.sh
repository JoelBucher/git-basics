#!/bin/bash

# Initialize a new repository and create initial state
git init
echo "def process_payment(): pass" > payment.py
echo "def log(msg): print(msg)" > logger.py
echo "# Project API" > README.md

git add .
git commit -m "chore: initial repository setup"

# Simulate the "mega-change" work session
echo -e "def process_payment():\n    # FIXED: Added timeout handling\n    set_timeout(5)\n    pass" > payment.py
echo -e "def log(msg):\n    # REFACTOR: Streamlined logging\n    if config.DEBUG: print(f'[LOG] {msg}')" > logger.py
echo -e "# Project API\n\n## Endpoints\n- POST /api/v1/charge" > README.md