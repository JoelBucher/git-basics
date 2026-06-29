#!/bin/bash

echo "This is the core stable codebase." > main.py
git add main.py
git commit -m "initial: setup stable core"

git checkout -b feature-public
echo "Adding a great public featrue!" >> main.py
git add main.py
git commit -m "feat: add public featrue"
git push

git checkout main
git checkout -b feature-private
echo "Adding an awesome privtae experiment." >> main.py
git add main.py
git commit -m "feat: add privtae experiment"