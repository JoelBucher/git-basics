# 7: The Main Worker

You just spent the last 20 minutes writing a brilliant new feature. You're about to commit it when a cold sweat breaks out: you realize you are still on the `main` branch! 

Company policy strictly forbids committing directly to `main`. You need to get this feature onto a dedicated branch called `feature/login-system` without losing your progress or polluting the production history.

## Objectives

1. Run `git status` and `git branch` to confirm your current situation (you have uncommitted changes on `main`).
2. Create and switch to a new branch named `feature/login-system`.
3. Verify that your uncommitted changes safely traveled with you to the new branch.
4. Stage and commit your changes on the new branch with the message `"feat: add core login logic"`.
5. Switch back to the `main` branch and verify that it remains completely clean and untouched.