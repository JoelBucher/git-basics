# 13: Collision Course

While you were deep in a flow state developing a new feature on the `feature/analytics` branch, the team discovered a critical memory leak in production. A hotfix branch (`hotfix/memory-leak`) was quickly spun up from `main`, and the bug was crushed. 

The hotfix has already been safely merged back into `main`. However, your feature branch is now lagging behind, and you need to incorporate those critical stability fixes into your branch *before* you continue your work.

Your task is to bring the changes from `main` into your current branch using a local merge.

## Objectives

1. Determine your current branch using `git branch`.
2. Ensure you are on the `feature/analytics` branch.
3. Merge the `main` branch into `feature/analytics`.
4. A merge conflict will occur in `dashboard.py`. Open the file and resolve it:
   * Keep the `optimize_memory()` routine from `main`.
   * Keep your new `track_metrics()` routine from `feature/analytics`.

## Helpful Hint
Because both branches modified the same area of `dashboard.py`, you will need to manually remove the `<<<<<<<`, `=======`, and `>>>>>>>` markers and arrange the two functions so they both exist in the final file.