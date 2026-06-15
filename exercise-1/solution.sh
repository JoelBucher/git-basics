#!/bin/bash

git status
git rm --cached credentials.env
git rm --cached app.py.swp
git status
git commit -m "fix: apply security patch and notes"