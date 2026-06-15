# 6: The Accidental Committer

A developer on your team forgot to create their feature branch and accidentally committed a massive new feature directly to `main`. 

Worse, right in the middle of their accidental streak, they discovered and fixed a critical documentation typo (`fix: typo in index.html`). Production needs that typo fix immediately, but we cannot deploy the incomplete feature.

When you are finished:
* `main` should only contain the stable history up to `v1.0.0` plus the single typo fix commit.
* `feature-alpha` should safely hold the entire work history for the new feature.

## Objectives
- Keep the documentation typo fix on `main`
- Isolate all four `feature-alpha` commits onto their own dedicated branch named `feature-alpha`. 
