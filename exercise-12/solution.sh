#!/bin/bash

# --- Part 1: Public Branch (Revert) ---
git checkout feature-public
git revert <commit-hash>


# --- Part 2: Private Branch (Reset) ---
git checkout feature-private
git reset --hard HEAD~1