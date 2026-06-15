# Exercise 1: Staging Area

Someone ran `git add .` way too early! Right now, your staging area contains 
important fixes, temporary junk, and sensitive information that should *never* be committed to version control.

Your task is to audit the staging area and fix it.

## Objectives

1. Run `git status` to see what is currently staged.
2. Unstage `credentials.env` and `app.py.swp` so they are **not** part of the next commit.
3. Ensure these files remain in your local directory (do not delete them from your computer, just untrack them from Git's staging area).
4. Verify that only `app.py` and `notes.txt` are staged.
5. Commit the changes with the message `"fix: apply security patch and notes"`.