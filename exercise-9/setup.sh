#!/bin/bash

echo "Project Root" > base.txt
git add base.txt
git commit -m "chore: init"

git checkout -b alpha-base main

echo "Alpha Base Setup" > alpha.txt
git add alpha.txt
git commit -m "feat: alpha base"

git checkout -b feature-alpha

echo "Alpha Feature Step" >> alpha.txt
git add alpha.txt
git commit -m "feat: A"

git checkout main
git checkout -b beta-base main

echo "Beta Base Setup" > beta.txt
git add beta.txt
git commit -m "feat: beta base"

git checkout -b feature-beta

echo "Beta Feature Step" >> beta.txt
git add beta.txt
git commit -m "feat: B"

git checkout alpha-base