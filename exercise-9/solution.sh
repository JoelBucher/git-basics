#!/bin/bash

git checkout alpha-base
git merge feature-alpha

git checkout beta-base
git merge feature-beta --no-ff -m "merge: integrate feature-beta"