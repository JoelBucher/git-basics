#!/bin/bash

git status
git restore --staged credentials.env
git restore --staged app.py.swp
git status
git commit -m "fix: apply security patch and notes"