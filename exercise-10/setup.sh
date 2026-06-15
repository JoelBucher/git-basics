#!/bin/bash

echo "node_modules/" > .gitignore
echo "print('Stable Application')" > app.py
git add app.py .gitignore
git commit -m "chore: initial repository setup" -q

echo "print('Running billing service...')" > app.py
echo "STRIPE_API_KEY=\"sk_prod_12345\"" >> app.py

git add app.py
git commit -m "feat: add stripe billing integration" -q