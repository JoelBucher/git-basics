#!/bin/bash

echo "import os" > app.py
git add app.py
git commit -m "Initial commit"

echo "API_KEY='prod_live_sk_9481bc33f2a11b0c'" >> app.py
git add app.py
git commit -m "feat: implement payment gateway integration"

git push

git reset --hard HEAD~1

git push -f