#!/bin/bash

git log -p -1

git reset --hard HEAD~1

echo "STRIPE_API_KEY=sk_prod_12345" > .env

echo ".env" >> .gitignore

git add .gitignore
git commit -m "chore: ignore env"