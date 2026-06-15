# 4: The Silent Clutter

You just pulled the latest changes from your team, and you are ready to start coding. However, your teammate works on a macOS machine and accidentally left a trail of `.DS_Store` files in the repository. To make matters worse, your own local text editor just generated some temporary log files (`debug.log`) that you don't want to track either.

If you run `git status`, you'll see a mix of system clutter, logs, and actual project work. Your goal is to clean up the repository, untrack the system files without deleting them from your machine, and configure Git so this never happens again.

## Objectives

1. Identify which files are currently being tracked by Git vs. which ones are untracked.
2. Remove the existing `.DS_Store` file from Git's tracking *without* deleting it from your actual file system.
3. Create a `.gitignore` file at the root of the repository.
4. Configure the `.gitignore` to permanently ignore:
   * All `.DS_Store` files anywhere in the project.
   * All files ending in `.log`.
5. Verify that your `git status` looks clean (only showing your intended changes and the new `.gitignore`).
6. Stage and commit your `.gitignore` and the removal of the clutter with the message `"chore: added gitignore"`.