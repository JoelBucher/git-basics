# 3: Interactive Staging

You're working on a feature in `auth.py`. While writing the core login logic, you also threw in a couple of `print()` statements to debug a variable, and you hastily drafted a half-finished token feature that isn't ready for production yet.

Your team lead wants the core login fix committed *right now* for a hotfix deploy. They explicitly told you: "Do not include your local debug logs or that unfinished token code in the release."

Because all of these changes are trapped inside the exact same file (`auth.py`), a standard `git add auth.py` won't work. You need to perform surgery on the file using Git's interactive patching tool.

## Objectives

1. Run `git diff` to review all the modifications inside `auth.py`.
2. **Stage** the hunk containing the core login bugfix.
3. **Skip (do not stage)** the hunk containing the `print("DEBUG:")` statement.
4. **Skip (do not stage)** the hunk containing the unfinished `generate_token` function.
5. Verify with `git status` and `git diff --staged` that only the login fix is ready to go.
6. Commit the partial changes with the message `"fix: correct user authentication logic"`.