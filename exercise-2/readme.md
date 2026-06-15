# Exercise: The Commit Mess

You've been in "the zone" for the last two hours. You fixed a nasty bug in the payment logic, refactored some messy logging code, and updated the project's documentation. 

But there's a problem: you haven't committed anything yet! If you run `git commit -a` right now, all of these unrelated changes will be lumped into a single, chaotic commit. Your team lead will not be happy during code review.

Your task is to break these changes down into **three distinct, logical commits** using Git's staging area.

## Objectives

1. Review the current changes using `git status` and `git diff`.
2. **Commit 1 (The Bugfix):** Stage *only* the change in `payment.py` and commit it with the message `"fix: resolve payment processing timeout"`.
3. **Commit 2 (The Refactor):** Stage *only* the change in `logger.py` and commit it with the message `"refactor: clean up verbose debug logs"`.
4. **Commit 3 (The Docs):** Stage the remaining change in `README.md` and commit it with the message `"docs: update API endpoints documentation"`.
5. Verify your work by running `git log --oneline` to ensure you have three clean commits on top of the initial commit.