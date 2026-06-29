# 12: Ctrl + Z

Oh no! Two different feature branches were pushed, and both contain a typo in their latest commit. 

Because of how these branches are intended to be used, you need to use two completely different strategies to fix them:
1. **`feature-public`**: This branch has already been pushed to the remote repository and shared with the team. You need to undo the typo **without rewriting history**.
2. **`feature-private`**: This is a local-only experimental branch. You want to completely wipe out the bad commit as if it **never happened**.

## Objectives

### Part 1: The Public Branch
1. Switch to the `feature-public` branch.
2. Undo the effect of the latest commit using `git revert` so that the history remains linear and safe for others.
3. Accept the default commit message or customize it.

### Part 2: The Private Branch
1. Switch to the `feature-private` branch.
2. Erase the latest bad commit entirely using `git reset --hard` to move the branch pointer back to the initial commit.